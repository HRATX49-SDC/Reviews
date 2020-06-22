require('dotenv').config();
const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
const db = require('../db/queries.js');

const app = express();

// MiddleWare
app.use(express.static(path.join('../client/dist/')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Routes

app.get('/Purrget', (req, res) => {
    db.getCatReviews((err, results) => {
    if (err) { 
        res.status(500)
        .send(err);
    } else {
        res.status(200)
        .send(results)
    }
  })
})


// Run Server
app.listen(process.env.PORT, () => {
    console.log(`Ready on port ${process.env.PORT}`);
})