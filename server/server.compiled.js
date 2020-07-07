"use strict";

var express = require('express');

var path = require('path');

var bodyParser = require('body-parser');

var db = require('../db/queries.js');

var PORT = process.env.PORT || 5200;
var app = express(); // MiddleWare

app.use(express["static"](path.join(__dirname, '..', 'client', 'dist')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended: true
})); // Routes

app.get("/reviews", function (req, res) {
  db.getCatReviews(req.query.catName, function (err, results) {
    if (err) {
      console.log(err, 'err getting from server');
      res.sendStatus(404);
    } else {
      res.status(200).send(results);
    }
  });
}); // app.get(`/reviews`, (req, res) => {
//     db.filterReviewsByType(req.query.filter, (err, results) => {
//     if (err) {
//       console.log(err, 'err getting from server')
//       res.sendStatus(404);
//     } else {
//       res.status(200)
//       .send(results);
//     }
//   })
// })
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

app.listen(PORT, function () {
  console.log("Ready on port ".concat(PORT));
});
