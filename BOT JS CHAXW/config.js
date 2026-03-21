module.exports = {
    client: {
        token: "MTQzOTQ4Mzg1MTExMzIzNDQ5NA.GGrEh1.LMhGqol_jRBBNA1Az8lX2VVBGQjR4AnTjo2jXY", // BOT TOKEN
        id: "1439483851113234494", // Aplication ID Bot
        guild: "1398545120634343434", // ID Server Discord
    }, // ICON DI BAWAH INI ADALAH LINK GAMBAR ATAU LOGO TUMBNAIL BOT NYA
    icon: {
        thumbnail: "https://cdn.discordapp.com/attachments/1374175078471831712/1444973658857803796/IMG-20251031-WA0070.jpg?ex=692ea816&is=692d5696&hm=ab2d83bf25ca0c273ed0c1c288abc36d89d50ad55562591c9bef02b23ee3a534",
        image: "https://cdn.discordapp.com/attachments/1374175078471831712/1444973658857803796/IMG-20251031-WA0070.jpg?ex=692ea816&is=692d5696&hm=ab2d83bf25ca0c273ed0c1c288abc36d89d50ad55562591c9bef02b23ee3a534",
    },
    mysql: {
        connectionLimit: 5, // SETTING MYSQL
        host: "31.58.143.80",
        user: "u555_9RmEgphChc",
        password: "t!s^ltytvAIdcy81cwdtkoeO",
        database: "s555_rehanganteng",
    },
    server: {
        ip: "31.58.143.80", // IP SERVER
        port: "7015", // PORT SERVER
    },
    verifrole: {
        warga: '1398545120634343435' // ID ROLE UNTUK VERIFIKASI ROLE SEHABIS JOIN DC
    },
    idrole: {
        ucp: "1442468740427157647", // ID ROLE TERVERIFIKASI KETIKA SUDAH REGISTRASI UCP
    },
    handler: {
        prefix: "!", // PREFIX
        deploy: true,
        commands: {
            prefix: true,
            slash: true,
            user: true,
            message: true,
        }
    },
    staff: {
        s1: "1398545120688607376", // FOUNDER
        s2: "1398545120688607376", // CO FOUNDER
        s3: "1400778340410982430", // DEVELOPER
        s4: "1398545120688607372", //TEAM ADMINISTRATOR
    },
    development: {
        enabled: false,
        guild: "1398545120634343434", // SERVER ID
    },
    servers: {
        name: "MAVORA ROLEPLAY", // NAMA SERVER
    },
    messageSettings: {
        ownerMessage: "Pengembang bot memiliki satu-satunya izin untuk menggunakan perintah ini.",
        developerMessage: "Anda tidak berwenang untuk menggunakan perintah ini.",
        cooldownMessage: "Pelan-pelan sobat! Anda terlalu cepat untuk menggunakan perintah ini ({cooldown}s).",
        globalCooldownMessage: "Pelan-pelan sobat! Perintah ini berada pada cooldown global ({cooldown}s).",
        notHasPermissionMessage: "Anda tidak memiliki izin untuk menggunakan perintah ini.",
        notHasPermissionComponent: "Anda tidak memiliki izin untuk menggunakan komponen ini.",
        missingDevIDsMessage: "Ini adalah perintah khusus pengembang, tetapi tidak dapat dijalankan karena ID pengguna tidak ada di file konfigurasi."
    }
};
