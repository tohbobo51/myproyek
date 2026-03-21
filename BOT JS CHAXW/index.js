const ExtendedClient = require('./src/class/HezxyClient');
const { ActivityType } = require("discord.js");
const query = require("samp-query");
const config = require('./config');

const client = new ExtendedClient();
client.start();

client.once('ready', () => {
    setInterval(() => {
        const options = {
            host: config.server.ip,
            port: config.server.port
        };

        query(options, (error, response) => {
            if (error) { // Status jika server offline
                client.user.setPresence({
                    activities: [{
                        name: 'Server is currently offline',
                        type: ActivityType.Watching
                    }],
                    status: 'dnd'
                });
            } else if (response.passworded) { // Status jika server memiliki password
                client.user.setPresence({
                    activities: [{
                        name: 'Server is under maintenance',
                        type: ActivityType.Watching
                    }],
                    status: 'idle'
                });
            } else if (response.online === 0) { // Status jika server online tetapi tidak ada pemain
                client.user.setPresence({
                    activities: [{
                        name: `MAVORA ROLEPLAY`,
                        type: ActivityType.Watching
                    }],
                    status: 'idle'
                });
            } else { // Status jika server online dengan pemain
                client.user.setPresence({
                    activities: [{
                        name: `RDRP | ${response.online} Players!`,
                        type: ActivityType.Playing
                    }],
                    status: 'online'
                });
            }
        });
    }, 30000); // 30 detik
});

process.on('unhandledRejection', console.error);
process.on('uncaughtException', console.error);