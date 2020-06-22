require('dotenv').config();
const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
const database = require('../db/queries.js');

const app = express();

// MiddleWare
app.use(express.static(path.join('../client/dist/')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Routes

app.get('/Purrget', (req, res) => {
    database.getCatReviews(req.query.name)
    .then(res => {
        res.status(200)
        .send(cat);
    })
    .catch(err => { 
    console.log(err)
    res.sendStatus(400);
    })
})


// Run Server
app.listen(process.env.PORT, () => {
    console.log(`Ready on port ${process.env.PORT}`);
})