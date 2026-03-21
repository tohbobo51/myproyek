#include <YSI\y_hooks>

forward Tags_Load();
public Tags_Load()
{
	if(cache_num_rows())
	{
		for(new i = 0; i != cache_num_rows(); i++)
		{
			Iter_Add(Tags, i);

			TagsData[i][tagID] 			= cache_get_field_int(i, "tagId");
			TagsData[i][tagPlayerID] 	= cache_get_field_int(i, "tagOwner");
			TagsData[i][tagBold] 		= cache_get_field_int(i, "tagBold");
			TagsData[i][tagSize] 		= cache_get_field_int(i, "tagFontsize");
			TagsData[i][tagColor] 		= cache_get_field_int(i, "tagColor");
			TagsData[i][tagExpired] 	= cache_get_field_int(i, "tagExpired");

			cache_get_field_content(i, "tagText", TagsData[i][tagText]);
			cache_get_field_content(i, "tagFont", TagsData[i][tagFont]);
			cache_get_field_content(i, "tagCreated", TagsData[i][tagPlayerName]);

			TagsData[i][tagPosition][0] = cache_get_field_float(i, "tagPosx");
			TagsData[i][tagPosition][1] = cache_get_field_float(i, "tagPosy");
			TagsData[i][tagPosition][2] = cache_get_field_float(i, "tagPosz");

			TagsData[i][tagRotation][0] = cache_get_field_float(i, "tagRotx");
			TagsData[i][tagRotation][1] = cache_get_field_float(i, "tagRoty");
			TagsData[i][tagRotation][2] = cache_get_field_float(i, "tagRotz");

			Tags_Sync(i);
		}
		printf("[Tags System]: Jumlah tags graffiti yang dimuat %d", cache_num_rows());
	}
	return 1;	
}

forward OnTagsCreated(index);
public OnTagsCreated(index)
{
	TagsData[index][tagID] = cache_insert_id();

	Tags_Sync(index);
	return 1;	
}

hook OnPlayerConnect(playerid)
{
	editing_object[playerid] = INVALID_STREAMER_ID;
}

hook OnPlayerDisconnect(playerid, reason)
{
	Tags_Reset(playerid);
}

FUNC:: Tags_Update()
{
    static counter;

    if (++counter >= 20)
    {
        foreach (new idx : Tags) // Pakai foreach agar tidak perlu Iter_Get()
        {
            if (!Iter_Contains(Tags, idx)) continue; // Pastikan idx valid

            if (TagsData[idx][tagExpired] < gettime())
            {
                new query[128];
                format(query, sizeof(query), "DELETE FROM `tags` WHERE `tagId`='%d';", TagsData[idx][tagID]);
                mysql_tquery(g_SQL, query); // Cek error query

                if (IsValidDynamicObject(TagsData[idx][tagObjectID]))
                    DestroyDynamicObject(TagsData[idx][tagObjectID]);

                TagsData[idx][tagObjectID] = INVALID_STREAMER_ID;

                Iter_Remove(Tags, idx); // Hapus setelah selesai
            }
        }
        counter = 0;
    }
    return 1;
}



FUNC:: OnTagUpdate(playerid)
{
    if(!AccountData[playerid][IsLoggedIn])
        return 0;
        
	if(GetPVarInt(playerid, "TagsReady") == 1)
	{
		if(GetPVarInt(playerid, "TagsTimer"))
		{
			SetPVarInt(playerid, "TagsTimer", GetPVarInt(playerid, "TagsTimer") - 1);

			if(!GetPVarInt(playerid, "TagsTimer"))
			{
				ClearAnimations(playerid);
				DeletePVar(playerid, "TagsReady");

				if(Tags_Create(playerid) != -1) Info(playerid, "Sukses membuat "YELLOW"spray tag"WHITE", akan hilang setelah "BLUEJEGE"3 hari!");
				else Error(playerid, "Tags sudah mencapai batas maksimal!");

                Inventory_Remove(playerid, "Pilox");
                ShowItemBox(playerid, "Removed 1x", "Pilox", 365);
				Tags_Reset(playerid);
			}
			else
			{
				ApplyAnimation(playerid, "GRAFFITI", "spraycan_fire", 4.1, 1, 0, 0, 1, 0, 1);
				ShowPlayerFooter(playerid, "Proses pembuatan ~y~spray tag ...", 1000);
			}
		}
	}
	return 1;
}

hook OnPlayerEditDynObj(playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz)
{
	if(IsPlayerEditingTags(playerid))
	{
		if(response == EDIT_RESPONSE_FINAL)
		{
			if(!IsPlayerInRangeOfPoint(playerid, 5.0, x, y, z))
				return Tags_Menu(playerid), Tags_ObjectSync(playerid, true), Error(playerid, "Posisi "YELLOW"object "WHITE"melebihi "ORANGE"5 meter "WHITE"dari posisimu!!");

			SetPVarFloat(playerid, "TagsPosX", x);
			SetPVarFloat(playerid, "TagsPosY", y);
			SetPVarFloat(playerid, "TagsPosZ", z);

			SetPVarFloat(playerid, "TagsPosRX", rx);
			SetPVarFloat(playerid, "TagsPosRY", ry);
			SetPVarFloat(playerid, "TagsPosRZ", rz);

			Tags_Menu(playerid);
			Tags_ObjectSync(playerid);

			Info(playerid, "Sukses memperbaharui posisi "YELLOW"object");
		}
		else if(response == EDIT_RESPONSE_CANCEL)
		{			
			Tags_Menu(playerid);
			Tags_ObjectSync(playerid, true);

			ShowTDN(playerid, NOTIFICATION_ERROR, "Gagal memperbaharui posisi object, object akan berubah keposisi sebelumnya.");
		}
	}
	return 1;
}