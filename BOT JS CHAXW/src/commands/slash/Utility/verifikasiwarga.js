const { ChatInputCommandInteraction, SlashCommandBuilder, EmbedBuilder, ActionRowBuilder, ButtonBuilder, MessageFlags } = require('discord.js');
const ExtendedClient = require('../../../class/HezxyClient');
const config = require('../../../../config');

module.exports = {
    structure: new SlashCommandBuilder()
        .setName('verifikasiwarga')
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
            .setTitle('Verifikasi Warga')
            .setThumbnail(config.icon.thumbnail)
            .setImage(config.icon.image)
            .setDescription(`:information_source: **Selamat datang di MAVORA ROLEPLAY!**\n\nUntuk memastikan bahwa Anda bukan robot dan mendapatkan akses penuh sebagai warga di server ini, silakan klik tombol di bawah ini.\n\nDengan memverifikasi, Anda akan mendapatkan role **Warga MAVORA Roleplay** yang memberikan Anda akses ke berbagai channel dan fitur di server ini.\n\nJika Anda mengalami masalah, silakan hubungi salah satu staf kami untuk bantuan lebih lanjut.\n\nKlik tombol **Verifikasi Warga** di bawah ini untuk melanjutkan.`)
            .setColor('Blue')

        const buttons = new ActionRowBuilder()
            .addComponents(
                new ButtonBuilder()
                    .setLabel('Verifikasi Warga')
                    .setStyle('Success')
                    .setCustomId('button-verif')
                    .setEmoji("✅")
            );

        await interaction.channel.send({ embeds: [msgEmbed], components: [buttons] });
        return interaction.reply({ content: "Sukses Membuat Embed Verifikasi Warga", flags: MessageFlags.Ephemeral });
    }
};
