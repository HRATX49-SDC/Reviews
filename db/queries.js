const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'HackReactor1',
    port: 3306,
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
            console.log(err, 'err in database query');
            cb(err, null);
        } else {
            console.log(results);
            cb(null, results);
        }
    })
};


module.exports = connection;

// INNER JOIN cats ON (cats.catName =(?) AND reviews.cat_id=cats.id)