const { ButtonInteraction, EmbedBuilder, ChatInputCommandInteraction, SlashCommandBuilder, ModalBuilder, ActionRowBuilder, TextInputBuilder, TextInputStyle } = require('discord.js');
const ExtendedClient = require('../../class/HezxyClient');
const MysqlMortal = require('../../../Mysql');
const config = require('../../../config');
const { IntSucces, IntError }= require('../../../functions');

module.exports = {
    customId: 'button-resendcode',
    /**
     * 
     * @param {ExtendedClient} client 
     * @param {ButtonInteraction} interaction 
     */
    run: async (client, interaction) => {
        const userid = interaction.user.id;
        MysqlMortal.query(`SELECT * FROM playerucp WHERE DiscordID = '${userid}'`, async (error, row) => {
            if (row[0]) {
                const msgEmbed = new EmbedBuilder()
                    .setAuthor({ name: "CEK AKUN | MAVORA ROLEPLAY!" })
                    .setDescription(`:white_check_mark: **Berhasil!**\nBerikut adalah detail dari akun UCP Anda:\n\n**Nama UCP**\n${row[0].ucp}\n\n**Kode Verifikasi**\n${row[0].verifycode}\n\n**Pemilik Akun**\nUser ID: **${userid}**\nUsername Discord: **${interaction.user.tag}**\n\n**Status**\nTerverifikasi\n\n**Catatan**\nJangan beritahu informasi ini kepada orang lain!`)
                    .setColor('#fffafa')
                    .setFooter({ text: interaction.guild.name })
                    .setTimestamp();

                await interaction.user.send({ embeds: [msgEmbed] }).catch(error => {
                    return interaction.reply({ content: "Tidak dapat mengirimkan kode/pin verifikasi akun UCP Anda. Silakan gunakan command /resendcode setelah membuka Direct Message di pengaturan Discord Anda.", ephemeral: true });
                });

                IntSucces(interaction, `**CEK AKUN | MAVORA ROLEPLAY!**\n:white_check_mark: Berhasil!\nKami telah mengirimkan DM kepada Anda. Silakan cek pesan tersebut.`);
            } else {
                return IntError(interaction, `**CEK AKUN | MAVORA ROLEPLAY!**\n:x: **ERROR!**\nAnda belum pernah mengambil tiket di kota MAVORA ROLEPLAY!. Silakan daftar dengan mengambil tiket.`);
            }
        });
    }
};
