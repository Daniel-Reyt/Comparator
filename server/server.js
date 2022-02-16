const http = require('http');
const express = require('express');
const bodyParser = require('body-parser');

const indexRouter = require("./routers/index.router")

//const docsRouter = require("./API/routers/docs.router")

const app = express();

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use((req, res, next) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content, Accept, Content-Type, Authorization');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
    next();
}); 

// Route pour le Swagger
app.use("/comparator", indexRouter);
//app.use("/docs", docsRouter);


const server = http.createServer(app);

const port = '8080'

server.listen(port)