#include <YSI_Coding\y_hooks>

enum E_Notify
{
    NotifyIcon,
    NotifyMessage[320],
    NotifySize
}
new NotifInfo[MAX_PLAYERS][4][E_Notify],
    MaxPlayerNotify[MAX_PLAYERS],
    PlayerText: gNotifTextdraw[MAX_PLAYERS][4 * 18],
    NotifIndex[MAX_PLAYERS]
;

timer NotifyHide[5000](playerid)
{
    if(!NotifIndex[playerid]) return 1;
    -- NotifIndex[playerid];
    MaxPlayerNotify[playerid] --;
    for(new i = -1; ++ i < 18;)
    {
        PlayerTextDrawDestroy(playerid, gNotifTextdraw[playerid][(NotifIndex[playerid] * 18) + i]);
    }
    return 1;
}

ShowTDN(playerid, notifid, text[])
{
    if(AccountData[playerid][pStyleNotif] == 1) // TD
    {
        switch(notifid)
        {
            case NOTIFICATION_ERROR:
            {
                if(MaxPlayerNotify[playerid] >= 4) return false;
                PlayerPlaySound(playerid, 1085, 0, 0, 0);
                ShowNotificationMessage(playerid, text, 2);
            }
            case NOTIFICATION_INFO:
            {
                if(MaxPlayerNotify[playerid] >= 4) return false;
                PlayerPlaySound(playerid, 1139, 0, 0, 0);
                ShowNotificationMessage(playerid, text, 1);
            }
            case NOTIFICATION_SUKSES:
            {
                if(MaxPlayerNotify[playerid] >= 4) return false;
                PlayerPlaySound(playerid, 5203, 0, 0, 0);
                ShowNotificationMessage(playerid, text, 1);
            }
            case NOTIFICATION_SYNTAX:
            {
                Syntax(playerid, "%s", text);
            }
            case NOTIFICATION_WARNING:
            {
                Warning(playerid, "%s", text);
            }
        }
    }
    else if(AccountData[playerid][pStyleNotif] == 2)
    {
        switch(notifid)
        {
            case NOTIFICATION_ERROR:
            {
                Error(playerid, "%s", text);
            }
            case NOTIFICATION_INFO:
            {
                Info(playerid, "%s", text);
            }
            case NOTIFICATION_SUKSES:
            {
                Info(playerid, "%s", text);
            }
            case NOTIFICATION_SYNTAX:
            {
                Syntax(playerid, "%s", text);
            }
            case NOTIFICATION_WARNING:
            {
                Warning(playerid, "%s", text);
            }
        }
    }
    return 1;
}

stock ShowNotificationMessage(playerid, const string[], icon)
{
    if(MaxPlayerNotify[playerid] >= 4) return 1;
    MaxPlayerNotify[playerid] ++;
    for (new x = -1; ++ x < NotifIndex[playerid];)
    {
        for(new i = -1; ++ i < 18;) {
            PlayerTextDrawDestroy(playerid, gNotifTextdraw[playerid][(x * 18) + i]);
        }

        NotifInfo[playerid][NotifIndex[playerid] - x] = NotifInfo[playerid][(NotifIndex[playerid] - x) - 1];
    }
    format(NotifInfo[playerid][0][NotifyMessage], 320, "%s", string);
    NotifInfo[playerid][0][NotifyIcon] = icon;
    NotifInfo[playerid][0][NotifySize] = 3;

    ++ NotifIndex[playerid];
    new Float:new_x = 0.0;
    for(new x = -1; ++ x < NotifIndex[playerid];)
    {
        CreateNotify(playerid, x, x * 18, new_x);
        new_x += (NotifInfo[playerid][x][NotifySize] * 7.25) + 25.0;
    }

    defer NotifyHide(playerid);
    return 1;
}

stock CreateNotify(playerid, index, i, Float:new_x)
{
    new lines = NotifInfo[playerid][index][NotifySize];
    new Float:x = (lines * 18) + new_x;
    new Float:newpos = x - 65.0;
    if(NotifInfo[playerid][index][NotifyIcon] == 1)
    {
        gNotifTextdraw[playerid][i] = CreatePlayerTextDraw(playerid, 522.000, 124.000 + newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 18.000, 18.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1061109505);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 525.000, 133.000 + newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 103.000, 10.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1061109505);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 613.000, 124.000 + newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 18.000, 18.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1061109505);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 531.000, 127.000 + newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 91.000, 16.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1061109505);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 525.000, 143.000 + newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 103.000, 20.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1448498689);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 522.000, 154.000 + newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 18.000, 18.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1448498689);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 613.000, 154.000 + newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 18.000, 18.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1448498689);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 532.000, 149.000 + newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 89.000, 20.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1448498689);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 532.000, 130.000 + newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 5.000, 5.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -2686721);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 534.000, 131.000 + newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 10.000, 11.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -2686721);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 542.000, 130.000 + newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 5.000, 5.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -2686721);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 542.000, 138.000 + newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 5.000, 5.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -2686721);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 532.000, 138.000 + newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 5.000, 5.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -2686721);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 533.000, 132.000 + newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 13.000, 8.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -2686721);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 534.000, 131.000 + newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 10.000, 11.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 538.000, 132.000 + newpos, "i");
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.180, 0.899);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -2686721);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 548.000, 131.000 + newpos, "INFO");
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.180, 0.999);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -2139062017);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 530.000, 146.000 + newpos, NotifInfo[playerid][index][NotifyMessage]);
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.129, 0.799);
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 624.000, 0.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);
    }
    else if(NotifInfo[playerid][index][NotifyIcon] == 2)
    {
        gNotifTextdraw[playerid][i] = CreatePlayerTextDraw(playerid, 522.000, 124.000 + newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 18.000, 18.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1061109505);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 525.000, 133.000 + newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 103.000, 10.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1061109505);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 613.000, 124.000 + newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 18.000, 18.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1061109505);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 531.000, 127.000 + newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 91.000, 16.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1061109505);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 525.000, 143.000 + newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 103.000, 20.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1448498689);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 522.000, 154.000 + newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 18.000, 18.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1448498689);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 613.000, 154.000 + newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 18.000, 18.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1448498689);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 532.000, 149.000 + newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 89.000, 20.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1448498689);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 532.000, 130.000 + newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 5.000, 5.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -2686721);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 534.000, 131.000 + newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 10.000, 11.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -16776961);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 542.000, 130.000 + newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 5.000, 5.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -16776961);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 542.000, 138.000 + newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 5.000, 5.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -16776961);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 532.000, 138.000 + newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 5.000, 5.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -16776961);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 533.000, 132.000 + newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 13.000, 8.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -16776961);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 534.000, 131.000 + newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 10.000, 11.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 537.000, 132.000 + newpos, "X");
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.180, 0.899);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -16776961);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 548.000, 131.000 + newpos, "ERROR");
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.180, 0.999);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -2139062017);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 530.000, 146.000 + newpos, NotifInfo[playerid][index][NotifyMessage]);
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.129, 0.799);
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 624.000, 0.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);
    }
    return 1;
}