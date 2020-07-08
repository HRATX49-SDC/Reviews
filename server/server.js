const express = require('express');
const path = require('path');
const db = require('../db/queries.js');
const compression = require('compression');

const PORT = process.env.PORT || 5200;
const app = express();

// MiddleWare
app.use(express.static(path.join(__dirname, '..', 'client', 'dist')));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(compression());

// Routes

app.get(`/reviews`, async (req, res) => {
  try {
    let results = await db.getCatReviews(req.query.catName)
    res.status(200).send(results);
  } catch(error) {
    res.sendStatus(404);
  }
});

app.post(`/reviews`, async (req, res) => {
  try {
    //postCatReview expects an object with each db entry, req.body is that object
    //must have 1 key per field
    let results = await db.postCatReview(req.body)
    res.status(200).send(results);
  } catch(error) {
    res.sendStatus(404);
  }
});

app.put(`/reviews`, async (req, res) => {
  try {
    let results = await db.updateCatReview(req.body, req.query.id)
    res.status(200).send(results);
  } catch(error) {
    res.sendStatus(404);
  }
});

app.delete(`/reviews`, async (req, res) => {
  console.log('Delete Request received');
  try {
    console.log(req.query.id);
    let results = await db.deleteCatReview(req.query.id)
    res.status(200).send(results);
  } catch(error) {
    res.sendStatus(404);
  }
});


// Run Server
app.listen(PORT, () => {
    console.log(`Ready on port ${PORT}`);
});