const mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/purrget', {useNewUrlParser: true});
const db = mongoose.connection;
const

db.on('error', console.log.bind(console, 'connection error:'));
db.once('open', () => {
  console.log('Connected to MongoDB via Mongoose');
})

module.exports = db;