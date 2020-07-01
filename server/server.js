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

app.get(`/reviews/:catName`, (req, res) => {
console.log(req.params.catName) 
    db.getCatReviews(req.params.catName, (err, results) => {
    if (err) {
      console.log(err, 'err getting from server')
      res.sendStatus(404);
    } else {
    // console.log(res.data)
      // var cats = results;
      // for (var i = 0; i < cats.length; i++) {
      // var catArr = [];
      //   for (const [value, key] of Object.entries(cats)) {
      //     catArr.push([value, key])
      //   }
      // // var fields = ['id', 'review_author', 'review_rating', 'review_value', 'review_taste', 'review_quality', 
      // // 'review_content', 'review_is_helpful', 'review_is_not_helpful', 'review_date']
      // }
      // console.log(catArr)
      res.status(200)
      .send(results)
    }
  })
})

app.post(`/reviews`, (req, res) => {
  db.addReview(req.params.body, (err, results) => {
    if (err) {
      res.sendStatus(404);
    } else {
      res.status(200)
    }
  })
})

// Run Server
app.listen(PORT, () => {
    console.log(`Ready on port ${PORT}`);
})