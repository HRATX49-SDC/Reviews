const mysql = require('mysql');

const connection = mysql.createConnection({
  host: process.env.RDS_HOSTNAME || 'localhost',
  user: process.env.RDS_USERNAME || 'root',
  password: process.env.RDS_PASSWORD || 'hackreactor',
  port: process.env.RDS_PORT || 3306,
  database: 'purrgetSDC'
})

connection.connect(err => {
  if (err) {
    console.log('error connecting to database.', err);
  } else {
    console.log('successfully connected to db.');
  }
})

connection.getCatReviews = (catName) => {
  return new Promise((resolve, reject) => {
    connection.query('select * from reviews INNER JOIN cats ON (cats.catName=(?) AND reviews.cat_id=cats.id )', catName, (err, results) => {
      if (err) {
        console.log(err, 'err in get request')
        reject(err);
      } else {
        resolve(results);
      }
    });
  })
};

connection.postCatReview = (review) => {
  return new Promise ((resolve, reject) => {
    connection.query('INSERT INTO reviews SET ?', review, (err, results) => {
      if(err) {
        console.log(err, 'err in post request');
        reject(err);
      } else {
        resolve(results);
      }
    })
  })
}

connection.deleteCatReview = (reviewId) => {
  return new Promise ((resolve, reject) => {
    connection.query('DELETE FROM reviews WHERE id=?', reviewId, (err, results) => {
      if(err) {
        console.log(err, 'err in delete request');
        reject(err);
      } else {
        resolve(results);
      }
    })
  });
}

connection.updateCatReview = (newReview, reviewId) => {
  return new Promise ((resolve, reject) => {
    let flatReviews = [newReview.cat_id, newReview.review_title, newReview.review_author, newReview.review_rating, newReview.review_value, newReview.review_taste, newReview.review_quality, newReview.review_content, newReview.review_is_helpful, newReview.review_is_not_helpful, newReview.recommendation, newReview.review_date, reviewId];

    console.log(flatReviews)
    connection.query('UPDATE reviews SET cat_id=?, review_title=?, review_author=?, review_rating=?, review_value=?, review_taste=?, review_quality=?, review_content=?, review_is_helpful=?, review_is_not_helpful=?, recommendation=?, review_date=? WHERE id=?', flatReviews, (err, results) => {
      if(err) {
        console.log(err, 'err in delete request');
        reject(err);
      } else {
        console.log(results);
        resolve(results);
      }
    })
  });
}

module.exports = connection;