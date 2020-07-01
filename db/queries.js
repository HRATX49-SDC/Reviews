const mysql = require('mysql');

const connection = mysql.createConnection({
    host: process.env.RDS_HOSTNAME || 'localhost',
    user: process.env.RDS_USERNAME || 'root',
    password: process.env.RDS_PASSWORD || 'HackReactor1',
    port: process.env.RDS_PORT || 3306,
    database: 'purrget'
})

connection.connect(err => {
    if(err) {
        console.log('error connecting to database.', err);
    } else {
        console.log('successfully connected to db.');
    }
})



connection.getCatReviews = (catName, cb) => {
    connection.query('select * from reviews INNER JOIN cats ON (cats.catName=(?) AND reviews.cat_id=cats.id )', catName, (err, results) => {
        if (err) {
            console.log(err, 'err in database query')
            cb(err, null);
        } else {
            // console.log(results)
            cb(null, results);
        }
    })
};

connection.addReview = (author, title, content, rating, recommendation, cb) => {
    connection.query('insert into reviews (review_author, review_title, review_content, review_rating, review_value, review_taste, review_quality, review_recommendation) values ()', params, (err, results) => {
        if (err) {
        console.log(err, 'err in db query')
            cb(err, null);
        } else {
            cb(null, results);
        }
    })
}


module.exports = connection;

// INNER JOIN cats ON (cats.catName =(?) AND reviews.cat_id=cats.id)