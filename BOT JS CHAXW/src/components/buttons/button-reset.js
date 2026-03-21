const { ButtonInteraction, EmbedBuilder, ChatInputCommandInteraction, SlashCommandBuilder, ModalBuilder, ActionRowBuilder, TextInputBuilder, TextInputStyle } = require('discord.js');
const ExtendedClient = require('../../class/HezxyClient');
const MysqlMortal = require('../../../Mysql');
const config = require('../../../config');
const { IntSucces, IntError } = require('../../../functions');

module.exports = {
    customId: 'button-reset',
    /**
     * 
     * @param {ExtendedClient} client 
     * @param {ButtonInteraction} interaction 
     */
    run: async (client, interaction) => {
        try {
            const userId = interaction.user.id;
            var randCode = Math.floor(100000 + Math.random() * 900000);
            const query = `UPDATE playerucp SET password = '', verifycode = '${randCode}' WHERE DiscordID = '${userId}'`;

            MysqlMortal.query(query, (error, results) => {
                if (error) {
                    console.error('Error executing query:', error);
                    return IntError(interaction, ":x: **ERROR** \nAnda belum pernah mengambil tiket di MAVORA ROLEPLAY!. Silakan daftar dengan mengambil tiket.");
                }

                if (results.affectedRows > 0) {
                    const getCodeQuery = `SELECT verifycode FROM playerucp WHERE DiscordID = '${userId}'`;
                    MysqlMortal.query(getCodeQuery, (getCodeError, codeResults) => {
                        if (getCodeError) {
                            console.error('Error retrieving verify code:', getCodeError);
                            return IntError(interaction, ":x: **ERROR** \nGagal mereset password akun UCP. Silakan coba lagi.");
                        }

                        if (codeResults.length > 0) {
                            const verifyCode = codeResults[0].verifycode;

                            const msgEmbed = new EmbedBuilder()
                                .setAuthor({ name: "PEMULIHAN AKUN | MAVORA ROLEPLAY!" })
                                .setDescription(`\n:warning: Peringatan!\nAnda telah meminta layanan reset password. Jika ini bukan permintaan Anda, abaikan pesan ini.\n\n***Kode Pemulihan***\n\`\`\`${verifyCode}\`\`\`\nMasuklah ke server dan masukkan Kode Pemulihan untuk membuat ulang kata sandi!`)
                                .setColor('#fffafa')
                                .setFooter({ text: interaction.guild.name })
                                .setTimestamp();

                            const user = interaction.user;
                            user.send({ embeds: [msgEmbed] }).catch((sendError) => {
                                console.error('Error sending DM:', sendError);
                                interaction.reply({ content: "Tidak dapat mengirimkan kode/pin verifikasi akun UCP Anda. Silakan gunakan command /resendcode setelah membuka Direct Message di pengaturan Discord Anda.", ephemeral: true });
                            });

                            IntSucces(interaction, `**PEMULIHAN AKUN | MAVORA ROLEPLAY!**\n:white_check_mark: Berhasil!\nKami telah mengirimkan DM kepada Anda, silakan cek pesan tersebut.`);
                        } else {
                            return IntError(interaction, ":x: **ERROR** \nGagal mereset password akun UCP. Silakan coba lagi.");
                        }
                    });
                } else {
                    return IntError(interaction, ":x: **ERROR** \nAnda belum pernah mengambil tiket di MAVORA ROLEPLAY!. Silakan daftar dengan mengambil tiket.");
                }
            });
        } catch (error) {
            console.error('Error in reset password interaction:', error);
            return IntError(interaction, ":x: **ERROR** \nTerjadi kesalahan dalam menangani permintaan.");
        }
    }
};
