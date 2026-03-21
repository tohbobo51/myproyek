const { ChatInputCommandInteraction, SlashCommandBuilder, EmbedBuilder, ActionRowBuilder, ButtonBuilder, ButtonStyle, MessageFlags } = require('discord.js');
const ExtendedClient = require('../../../class/HezxyClient');
const { time } = require('../../../../functions');
const config = require('../../../../config');

module.exports = {
    structure: new SlashCommandBuilder()
        .setName('handleregister')
        .setDescription('Test the handleregister handler.'),
    /**
     * @param {ExtendedClient} client 
     * @param {ChatInputCommandInteraction} interaction 
     */
    run: async (client, interaction) => {
        
        if (
      !interaction.member.roles.cache.some((r) =>
        [
          config.staff.s1,
          config.staff.s2,
          config.staff.s3
        ].includes(r.id)
      )
    ) {
      return interaction.reply({
        content: "kamu tidak memiliki akses untuk memakai command ini",
        flags: MessageFlags.Ephemeral,
      });
    } //role tertentu yang memiliki akses untuk menggunakan command ini menggunakan id role bebas menambahkan berapa role.
        
        const msgEmbed = new EmbedBuilder()
            .setTitle('MAVORA ROLEPLAY | Control Panel')
            .setImage(config.icon.image)
            .setDescription(`Channel ini merupakan tempat dimana kamu dapat mengatur akun UCP kamu sendiri. Terdapat beberapa hal yang harus kamu ketahui, diantaranya:`)
            .addFields([
        {
          name: `📮 Buat UCP Mu`,
          value: `> Tombol ini digunakan untuk membuat akun UCP. Sebelum bermain di MAVORA ROLEPLAY, kamu harus memiliki akun UCP ini.`,
        },
        {
          name: `🔎 Check UCP Mu`,
          value: `> Kamu bisa melihat status akun UCP kamu, apakah sudah terverifikasi atau belum. Kamu juga bisa melihat kode verifikasi jika belum menerima DM dari BOT MAVORA ROLEPLAY.`,
        },
        {
          name: `🔓 Reset Password Mu`,
          value: `> Sesuai dengan namanya, tombol ini tempat apabila kamu lupa kata sandi UCP atau ingin mengganti kata sandi akun UCP kamu.`,
        },
        {
            name: `♻️ Reff Role`,
            value: `> Jika sudah mmembuat akun UCP tetapi tidak mendapatkan role <1370028824208867416>, gunakan tombol ini. Juga gunakan ini jika kamu keluar dari Discord **MAVORA ROLEPLAY** dan ingin kembali bermain, untuk mengambil kembali role <@1370028824208867416> dan tombol ini juga merubah nickname discord kamu di server ini sesuai dengan nama akun UCP kamu.`,
        },
      ])
            .setColor('#fffafa')

        const buttons = new ActionRowBuilder()
            .addComponents(

                new ButtonBuilder()
                    .setLabel('Register Ucp')
                    .setCustomId('button-register')
                    .setStyle(ButtonStyle.Secondary)
                    .setEmoji("📮"),

                new ButtonBuilder()
                    .setLabel('Check UCP')
                    .setCustomId('button-resendcode')
                    .setStyle(ButtonStyle.Secondary)
                    .setEmoji("🔎"),
                
                new ButtonBuilder()
                        .setLabel('Reset Password')
                        .setCustomId('button-reset')
                        .setStyle(ButtonStyle.Danger)
                        .setEmoji("🔓"),

                new ButtonBuilder()
                    .setLabel('Reff Role')
                    .setCustomId('button-reffrole')
                    .setStyle(ButtonStyle.Secondary)
                    .setEmoji("♻️")
            );

        await interaction.channel.send({ embeds: [msgEmbed], components: [buttons] });
        return interaction.reply({ content: "Sukses Membuat Embed HandleRegister", flags: MessageFlags.Ephemeral });
    }
};
