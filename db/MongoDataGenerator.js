const faker = require('faker');
const fs = require('fs');
const csvWriter = require('csv-write-stream');
const writer = csvWriter();
var count = 1;

//helper function to generate random date
const generateDate = () => {
  let month = Math.floor(Math.random() * 6 + 1);
  let day = Math.floor(Math.random() * 10 + 1);

  return `2020-0${month}-0${day}`;
};

const generateRandomCat = (id) => {
 let review = {
  catName: faker.name.firstName(),
  catId: id,
  title: faker.random.words(),
  author: faker.lorem.word(),
  rating: Math.floor(Math.random() * 6),
  value: Math.floor(Math.random() * 6),
  taste: Math.floor(Math.random() * 6),
  qualtiy: Math.floor(Math.random() * 6),
  content: faker.lorem.sentences(),
  helpful: Math.floor(Math.random() * 10),
  notHelpful: Math.floor(Math.random() * 10),
  date: generateDate()
 };

 return review;
}

const dataGen = () => {
  writer.pipe(fs.createWriteStream('data.csv'));
  for(var i = 0; i < 10000000; i++) {
    writer.write(generateRandomCat(count++))
  }

  writer.end();
  console.log('done');
}

dataGen();


//helper funciton to generate a random review - this can be used if I want more reviews per cat
// const generateRandomReviews = () => {
//   let reviewsArray = []
//   let numReviews = Math.floor(Math.random() * 4);
//   for(let i = 0; i < numReviews; i++) {
//     reviewsArray.push({
//       title: faker.random.words(),
//       author: faker.lorem.word(),
//       rating: Math.floor(Math.random() * 6),
//       value: Math.floor(Math.random() * 6),
//       taste: Math.floor(Math.random() * 6),
//       qualtiy: Math.floor(Math.random() * 6),
//       content: faker.lorem.sentences(),
//       helpful: Math.floor(Math.random() * 10),
//       notHelpful: Math.floor(Math.random() * 10),
//       date: generateDate()
//     })
//   }
//   console.log(reviewsArray);
//   return reviewsArray;
// }

/*

Generate 10M data pieces:
 Format:
  {
    catName:
    catId:
    reviews: [
      0-3 review objects
    ]
  }

  Review Object:
  {
    catName:
    catId:
    title:
    author:
    rating:
    value:
    taste:
    qualtiy:
    content:
    helpful:
    notHelpful:
    date:
  }

*/