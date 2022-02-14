const db = require('../db/user.db')

async function getAllUsers(req, res, next) {
    const users = await db.getAllUsers()
    res.send(users);
}

module.exports = {
    getAllUsers
}