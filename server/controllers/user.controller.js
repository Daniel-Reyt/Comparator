async function getAllUsers(req, res, next) {
    const users = [{
        name: 'daniel',
        password: 'daniel'
    }];

    res.send(users);
}

module.exports = {
    getAllUsers
}