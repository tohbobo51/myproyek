const { log } = require("../../../functions");
const config = require('../../../config');
const ExtendedClient = require('../../class/HezxyClient');

module.exports = {
    event: 'ready',
    once: true,
    /**
     * 
     * @param {ExtendedClient} _ 
     * @param {import('discord.js').Client<true>} client 
     * @returns 
     */
    run: (_, client) => {
	console.log(`
════════════════════════════════════════
\t࿖ Bot Succesfully On!
\t----- Info Bot -----
Logged in as: ${client.user.tag}
ID          : ${client.user.id}
Prefix      : (${config.handler.prefix})
Made in     : Benji (Lenzz)
\t----- Action -----
════════════════════════════════════════`);
    }
};