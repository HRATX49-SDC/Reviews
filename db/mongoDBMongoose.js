const mongoose = require('mongoose');
const { ObjectId } = require('mongodb');
mongoose.connect('mongodb://localhost/sdc', {useNewUrlParser: true});
const db = mongoose.connection;



db.on('error', console.error.bind(console, 'connection error:'));
db.once('open', () => {
  console.log('Connected to MongoDB via Mongoose');
  //interact
  const schema = new mongoose.Schema({
    catName: String,
    catId: Number,
    title: String,
    author: String,
    rating: Number,
    value: Number,
    taste: Number,
    qualtiy: Number,
    content: String,
    helpful:Number,
    notHelpful: Number,
    date: Date
  })
  const Review = mongoose.model('Review', schema);

  db.getCatReviews = (catName) => {
    return new Promise((resolve, reject) => {
      Review.findOne({ catName: catName}, ((err, doc) => {
        if(err) {
          reject(err);
        } else {
          resolve(doc);
        }
      }));
    });
  };

  db.postCatReview = (review) => {
    return new Promise((resolve, reject) => {
      Review.create(review, ((err, doc) => {
        if(err) {
          reject(err);
        } else {
          resolve(doc);
        }
      }));
    });
  }

  db.deleteCatReview = (catId) => {
    return new Promise((resolve, reject) => {
      Review.deleteOne({_id: ObjectId(catId)}, ((err, doc) => {
        if(err) {
          reject(err);
        } else {
          resolve(doc);
        }
      }));
    });
  }

  db.updateCatReview = (newReview, catId) => {
    return new Promise((resolve, reject) => {
      Review.updateOne({ _id: ObjectId(catId)}, newReview, ((err, docs) => {
        if(err) {
          reject(err);
        } else {
          resolve(docs);
        }
      }));
    });
  }

})

module.exports = db;