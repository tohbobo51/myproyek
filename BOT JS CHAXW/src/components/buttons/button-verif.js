const { ButtonInteraction, ExtendedClient } = require('discord.js');
const config = require('../../../config');
const { IntSucces, IntError } = require('../../../functions');

module.exports = {
    customId: 'button-verif',
    /**
     * 
     * @param {ExtendedClient} client 
     * @param {ButtonInteraction} interaction 
     */
    run: async (client, interaction) => {
        const userid = interaction.user.id;
        const createdAt = new Date(interaction.user.createdAt).getTime();
        const detectDays = Date.now() - createdAt;

        const role = interaction.guild.roles.cache.get(config.verifrole.warga);
        if (role) {
            await interaction.member.roles.add(role);
            return IntSucces(interaction, `**VERIFIKASI WARGA | MAVORA ROLEPLAY!**\n:white_check_mark: Berhasil!\n\n> Anda telah berhasil diverifikasi sebagai warga dan mendapatkan role <@&${config.verifrole.warga}>\n\n**MAVORA ROLEPLAY!**`);
        } else {
            return IntError(interaction, "Role 'warga' tidak ditemukan.");
        }
    }
};
