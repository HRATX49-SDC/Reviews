require('dotenv').config();
const mysql = require('mysql');

let connection = mysql.createConnection({
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



connection.getCatReviews = () => {
    connection.query(`select * from Cats where (cat_name) = "Luna" `, (err, results) => {
        if (err) {
            console.log(err, null);
        } else {
            console.log(results)
            res.send(results);
        }
    })
}


module.exports = connection;