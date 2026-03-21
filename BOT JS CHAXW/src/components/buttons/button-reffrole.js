const { ButtonInteraction } = require('discord.js');
const ExtendedClient = require('../../class/HezxyClient');
const config = require('../../../config');
const { IntSucces, IntError } = require('../../../functions');
const MysqlMortal = require('../../../Mysql');

module.exports = {
    customId: 'button-reffrole',
    /**
     * 
     * @param {ExtendedClient} client 
     * @param {ButtonInteraction} interaction 
     */
    run: async (client, interaction) => {
        const userid = interaction.user.id;

        MysqlMortal.query(`SELECT * FROM playerucp WHERE DiscordID = '${userid}'`, async (err, row) => {
            if (err) {
                console.error(err);
                return IntError(interaction, `**REFF ROLE | MAVORA ROLEPLAY!**\n:x: **ERROR!** \n\n> Terjadi kesalahan saat mengambil data dari database MAVORA ROLEPLAY.`);
            }

            if (row[0]) {
                const rUCP = await interaction.guild.roles.cache.get(config.idrole.ucp);

                interaction.member.roles.add(rUCP);
                interaction.member.setNickname(`${row[0].ucp}`);

                IntSucces(interaction, `**REFF ROLE MAVORA ROLEPLAY!**\n:white_check_mark: **Berhasil!**\n\n> Akun Discord Anda berhasil kami verifikasi sebagai pemain di MAVORA ROLEPLAY!.\n> Mohon untuk tidak keluar lagi dari Discord MAVORA ROLEPLAY!.`);
            } else {
                IntError(interaction, `**REFF ROLE | MAVORA ROLEPLAY!**\n:x: **ERROR!** \n\n> Anda belum pernah mendaftar/ambil tiket di MAVORA ROLEPLAY. Silakan ambil tiket terlebih dahulu.`);
            }
        });
    }
};
