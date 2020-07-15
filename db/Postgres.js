const { Pool, Client } = require('pg');

const pool = new Pool({
  user: 'anthony',
  host: 'db',
  database: 'reviews',
  password: 'root',
  port: 5432
})

pool.on('error', (err, client) => {
  console.err("Unexpected Error on idle client", err);
  process.exit(-1);
})

;(async () => {
  const client = await pool.connect();
  console.log("Connected to postgres client")


  client.release();
})().catch(err => console.log(err.stack));

pool.getCatReviews = async (catName) => {
  try{
    let result = await pool.query('SELECT * FROM reviews WHERE "catId"=(Select "catId" FROM cats WHERE "catName" = $1 LIMIT 1)', [catName]);
    // let result = await pool.query('SELECT "catName" FROM cats WHERE "catId" > 9900000 LIMIT 10000');
    return result.rows;
  } catch(err) {
    console.log(err)
    throw new Error(err);
  }
};

pool.postCatReview = async (review) => {
  try {
    let r = review;
    let reviewArray = [r.catId, r.title, r.author, r.rating, r.value, r.taste, r.qualtiy, r.content, r.helpful, r.notHelpful, r.date];
    let result = await pool.query('INSERT INTO reviews("catId", "title", "author", "rating", "value", "taste", "quality", "content", "helpful", "notHelpful", "date") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11)', reviewArray);
    return result;
  } catch(err) {
    console.log(err);
    throw new Error(err);
  }
}

pool.deleteCatReview = async (reviewId) => {
  try {
    let result = await pool.query('DELETE FROM reviews WHERE "id"=$1',[reviewId]);
    return result;
  } catch(err) {
    throw new Error(err);
  }
}

pool.updateCatReview = async (newReview, reviewId) => {
  try {
    let r = newReview;
    let reviewArray = [r.catId, r.title, r.author, r.rating, r.value, r.taste, r.qualtiy, r.content, r.helpful, r.notHelpful, r.date, reviewId];
    let result = await pool.query('UPDATE reviews SET "catId"=$1, "title"=$2, "author"=$3, "rating"=$4, "value"=$5, "taste"=$6, "quality"=$7, "content"=$8, "helpful"=$9, "notHelpful"=$10, "date"=$11 WHERE "id"=$12', reviewArray);
    return result;
  } catch(err) {
    console.log(err);
    throw new Error(err);
  }
}

module.exports = pool;