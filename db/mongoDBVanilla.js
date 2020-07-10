const MongoClient = require('mongodb').MongoClient;
const assert = require('assert');
const { ObjectID } = require('mongodb');
const url = 'mongodb://localhost:27017';
const dbName = 'sdc';
const collName = 'reviews';

const client = new MongoClient(url);
// const db = client.db(dbName);
// const collection = db.collection(collName);

client.connect((err) => {
  assert.equal(null, err);
  console.log('Successfully connected to mongoDB (vanilla)');

  const db = client.db(dbName);
  const collection = db.collection(collName);

  client.getCatReviews = async (catName) => {
    try {
      let result = await collection.findOne({ catName: catName});
      return result;
    } catch(err) {
      throw new Error(err);
    }
  };

  client.postCatReview = async (review) => {
    try {
      let result = await collection.insertOne(review);
      return result;
    } catch(err) {
      throw new Error(err);
    }
  };
  
  client.deleteCatReview = async (catId) => {
    try{
      let result = await collection.deleteOne({"_id": ObjectID(catId)});
      return result;
    } catch(err) {
      throw new Error(err);
    }
  };
  
  client.updateCatReview = async (newReview, catId) => {
    try {
      let result = await collection.updateOne({ _id: ObjectID(catId)}, {$set: newReview});
      return result;
    } catch(err) {
      throw new Error(err);
    }
  };
})

module.exports = client;