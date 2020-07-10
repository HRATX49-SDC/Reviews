const mongoose = require('mongoose');
const { ObjectId } = require('mongodb');
mongoose.connect('mongodb://localhost/sdc', {useNewUrlParser: true});
const db = mongoose.connection;



db.on('error', console.error.bind(console, 'connection error:'));
db.once('open', () => {
  console.log('Connected to MongoDB via Mongoose');
  
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

  db.getCatReviews = async (catName) => {
    try{
      let result = await Review.findOne({ catName: catName});
      return result;
    } catch(err) {
      throw new Error(err);
    }
  };

  db.postCatReview = async (review) => {
    try{
      let result = await Review.create(review);
      return result;
    } catch(err) {
      throw new Error(err);
    }
  }

  db.deleteCatReview = async (catId) => {
    try{
      let result = await Review.deleteOne({_id: ObjectId(catId)});
      return result;
    } catch(err) {
      throw new Error(err);
    }
  }

  db.updateCatReview = async (newReview, catId) => {
    try{
      let result = await Review.updateOne({ _id: ObjectId(catId)}, newReview);
      return result;
    } catch(err) {
      throw new Error(err);
    }
  }

})

module.exports = db;