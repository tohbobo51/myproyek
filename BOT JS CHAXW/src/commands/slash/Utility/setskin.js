const { ChatInputCommandInteraction, SlashCommandBuilder, EmbedBuilder, MessageFlags } = require('discord.js');
const ExtendedClient = require('../../../class/HezxyClient');
const mysql = require('mysql2');
const config = require('../../../../config');

const db = mysql.createPool({
    connectionLimit: config.mysql.connectionLimit,
    host: config.mysql.host,
    user: config.mysql.user,
    password: config.mysql.password,
    database: config.mysql.database,
});


module.exports = {
    structure: new SlashCommandBuilder()
        .setName('setskin')
        .setDescription('Set a new skin for a character')
        .addStringOption(option => 
            option.setName('username')
                .setDescription('Name of the character')
                .setRequired(true))
        .addIntegerOption(option => 
            option.setName('skinid')
                .setDescription('ID of the new skin')
                .setRequired(true)),
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
        
        const username = interaction.options.getString('username');
        const skinId = interaction.options.getInteger('skinid');

        db.query('SELECT * FROM players WHERE username = ?', [username], (err, results) => {
            if (err) {
                console.error(err);
                interaction.reply({ content: 'An error occurred while fetching the player data.', flags: MessageFlags.Ephemeral });
                return;
            }

            if (results.length === 0) {
                interaction.reply({ content: `No player found with username ${username}.`, flags: MessageFlags.Ephemeral });
                return;
            }

            db.query('UPDATE players SET skin = ? WHERE username = ?', [skinId, username], (err) => {
                if (err) {
                    console.error(err);
                    interaction.reply({ content: 'An error occurred while updating the player data.', flags: MessageFlags.Ephemeral });
                    return;
                }

                const kiw = new EmbedBuilder()
                .setTitle(`SET SKIN`)
                .setDescription(`Successfully set new skin ID ${skinId} for ${username}.`)
                .setThumbnail(`https://assets.open.mp/assets/images/skins/${skinId}.png`)
                .setColor("#fffafa")

                interaction.reply({ embeds: [kiw] });
            });
        });
    }
};
