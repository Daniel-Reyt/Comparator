const mysql = require('mysql');

const conn = mysql.createConnection({
    host: 'mariadb',
    port: 3306,
    user: 'admin',
    password: 'admin',
    database: 'ComparatorDB'
});

async function getAllUsers() {
    return new Promise((resolve, reject) => {
        conn.query('SELECT * FROM users', (err, rows) => {
            if (err) {
                console.log(err)
            } else {
                resolve(rows)
            }
        })
    })
}

module.exports = {
    getAllUsers
}