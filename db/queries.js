const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'HackReactor1',
    database: 'Purrget',
})

connection.connect(err => {
    if(err) {
        console.log('error connecting to database.', err);
    } else {
        console.log('successfully connected to db.');
    }
})



const getCatReviews = function(callback) {
    connection.query(`select * from cats`, (err, results) => {
        if (err) {
            console.log('err in database query');
            callback(err, null);
        } else {
            callback(null, results);
        }
    })
}


module.exports = getCatReviews;