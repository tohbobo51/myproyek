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
        .setName('removeic')
        .setDescription('Remove a character entry')
        .addStringOption(option => 
            option.setName('namacharacter')
                .setDescription('Name of the character')
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
        
        const namacharacter = interaction.options.getString('namacharacter');

        db.query('SELECT * FROM players WHERE username = ?', [namacharacter], (err, results) => {
            if (err) {
                console.error(err);
                interaction.reply({ content: 'An error occurred while fetching the character data.', flags: MessageFlags.Ephemeral });
                return;
            }

            if (results.length === 0) {
                interaction.reply({ content: `No character found with the name ${namacharacter}.`, flags: MessageFlags.Ephemeral });
                return;
            }

            db.query('DELETE FROM players WHERE username = ?', [namacharacter], (err) => {
                if (err) {
                    console.error(err);
                    interaction.reply({ content: 'An error occurred while deleting the character data.', flags: MessageFlags.Ephemeral });
                    return;
                }

                interaction.reply({ content: `Successfully removed character ${namacharacter}.` });
            });
        });
    }
};
