const express = require("express");
const indexRouter = express.Router();
const userController = require('../controllers/user.controller');

indexRouter.get("/users", userController.getAllUsers);

module.exports = indexRouter;