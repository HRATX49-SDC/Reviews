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

  //client.getCatReviews("Rashad Kuhlman II");
})

client.getCatReviews = (catName) => {
  const db = client.db(dbName);
  const collection = db.collection(collName);
  return new Promise((resolve, reject) => {
    collection.findOne({ catName: catName}, ((err, doc) => {
      if(err) {
        reject(err);
      } else {
        resolve(doc);
      }
    }));
  });
};

client.postCatReview = (review) => {
  const db = client.db(dbName);
  const collection = db.collection(collName);
  return new Promise((resolve, reject) => {
    collection.insertOne(review, (err, doc) => {
      if(err) {
        reject(err);
      } else {
        resolve(doc);
      }
    });
  });
};

client.deleteCatReview = (catId) => {
  const db = client.db(dbName);
  const collection = db.collection(collName);
  return new Promise((resolve, reject) => {
    collection.deleteOne({"_id": ObjectID(catId)}, ((err, doc) => {
      if(err) {
        reject(err);
      } else {
        resolve(doc);
      }
    }));
  });
};

client.updateCatReview = (newReview, catId) => {
  const db = client.db(dbName);
  const collection = db.collection(collName);
  return new Promise((resolve, reject) => {
    collection.updateOne({ _id: ObjectID(catId)}, {$set: newReview}, ((err, docs) => {
      if(err) {
        reject(err);
      } else {
        resolve(docs);
      }
    }));
  });
};

module.exports = client;