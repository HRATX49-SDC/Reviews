const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
const db = require('../db/queries.js');

const PORT = process.env.PORT || 5200;

const app = express();

// MiddleWare
app.use(express.static(path.join(__dirname, '..', 'client', 'dist')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Routes

app.get(`/reviews`, (req, res) => {
console.log(req.query.catName);
    db.getCatReviews(req.query.catName, (err, results) => {
    if (err) {
      console.log(err, 'err getting from server')
      res.sendStatus(404);
    } else {
      res.status(200)
      .send(results);
    }
  })
})

// app.post(`/reviews`, (req, res) => {
//   db.addReview(req.params.body, (err, results) => {
//     if (err) {
//       res.sendStatus(404);
//     } else {
//       res.status(200)
//       .send(results);
//     }
//   })
// })

// Run Server
app.listen(PORT, () => {
    console.log(`Ready on port ${PORT}`);
})