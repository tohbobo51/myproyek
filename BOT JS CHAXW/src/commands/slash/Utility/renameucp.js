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
        .setName('renameucp')
        .setDescription('Rename a UCP entry')
        .addStringOption(option => 
            option.setName('namaucplama')
                .setDescription('Old UCP name')
                .setRequired(true))
        .addStringOption(option => 
            option.setName('namaucpbaru')
                .setDescription('New UCP name')
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
        
        const namaucplama = interaction.options.getString('namaucplama');
        const namaucpbaru = interaction.options.getString('namaucpbaru');

        db.query('SELECT * FROM ucp WHERE UCP = ?', [namaucplama], (err, results) => {
            if (err) {
                console.error(err);
                interaction.reply({ content: 'An error occurred while fetching the UCP data.', flags: MessageFlags.Ephemeral });
                return;
            }

            if (results.length === 0) {
                interaction.reply({ content: `No UCP found with the name ${namaucplama}.`, flags: MessageFlags.Ephemeral });
                return;
            }

            db.query('UPDATE ucp SET UCP = ? WHERE UCP = ?', [namaucpbaru, namaucplama], (err) => {
                if (err) {
                    console.error(err);
                    interaction.reply({ content: 'An error occurred while renaming the UCP.', flags: MessageFlags.Ephemeral });
                    return;
                }

                interaction.reply({ content: `Successfully renamed UCP from ${namaucplama} to ${namaucpbaru}.` });
            });
        });
    }
};
