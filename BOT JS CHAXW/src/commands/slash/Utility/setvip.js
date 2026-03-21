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
        .setName('setvip')
        .setDescription('Set VIP level and time for a character')
        .addStringOption(option => 
            option.setName('username')
                .setDescription('Name of the character')
                .setRequired(true))
        .addIntegerOption(option => 
            option.setName('viplevel')
                .setDescription('Level of the VIP')
                .setRequired(true))
        .addIntegerOption(option => 
            option.setName('viptime')
                .setDescription('Duration of the VIP time (in seconds)')
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
        const vipLevel = interaction.options.getInteger('viplevel');
        const vipTime = interaction.options.getInteger('viptime');

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

            db.query('UPDATE players SET vip = ?, vip_time = ? WHERE username = ?', [vipLevel, vipTime, username], (err) => {
                if (err) {
                    console.error(err);
                    interaction.reply({ content: 'An error occurred while updating the player data.', flags: MessageFlags.Ephemeral });
                    return;
                }

                interaction.reply({ content: `Successfully set VIP level and time for ${username}.` });
            });
        });
    }
};
