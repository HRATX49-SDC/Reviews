import React from 'react';
import axios from 'axios';
import Filter from './components/Filter.jsx';
import Reviews from './components/Reviews.jsx';
import DashBoard from './components/Dashboard.jsx';

class App extends React.Component {
  constructor(props) {
    super(props);
      this.state = {
        reviews: [],
        numberOfReviews: 0,
        totalNumberOfRatings: 0,
        avgRating: 0,
        wouldRecommend: null,
        numberOfRatings: null,
        recommendations: 3
      }
      this.getAverageRating = this.getAverageRating.bind(this);
      this.getCats = this.getCats.bind(this);

  }


  // filterByType(e) {
  //   let typeId = e.target.value;
  //   if (typeId === "most recent") {
  //       this.setState({ reviews: this.state.originalReviews });
  //   }
  //   else {
  //     axios.get(`${process.env.REACT_APP_API}/reviews?type=${id}`)
  //       .then(res => {
  //           this.setState({ reviews: res.data });
  //       })
  //       .catch( err => { console.log(err) })
  //   }
  // }

  getAverageRating() {
    var totalRatings = 0;
      var reviews = this.state.reviews;
      for (var i = 0; i < reviews.length; i++) {
      var rating =reviews[i].rating[0];
        for (var key in rating) {
        var currentRating = rating[key]
          totalRatings += currentRating;
          var avg = totalRatings / 5;
      console.log(totalRatings)
        }
      }
      this.setState({
        totalNumberOfRatings: totalRatings * 1.2,
        avgRating: avg,
        numberOfReviews: this.state.reviews.length
      });
  }

  getCats() {
    axios.get('/Purrget')
    .then(res => {
      this.setState({ reviews: res.data });
    })
  } 

  componentDidMount() {
  this.getAverageRating();
    axios.get('/Purrget')
      .then(res => {
        console.log(res.data)
        this.setState({
          reviews: res.data,
            
        })
      })
      .catch(err => {
      console.log('err', err) ;
      })
    }

  render() {
    return ( 
      <>
        <DashBoard data={this.state} />
        <button type="button" onClick={(e) => this.getAverageRating(e)}>get Average rating</button>
        <Filter state={this.state} />
        <Reviews reviews={this.state.reviews} rating={this.state.reviews.rating}/>
        <button className="primary">Write a review</button>
      </>
     )
  }
}
 
export default App;

            // {
            //     title: 'This is a great review',
            //     name: 'User_name',
            //     rating: [
            //       [ "value", 5 ],
            //       [ "taste", 4 ],
            //       [ "quality", 3 ]
            //     ],
            //     // value: 1,
            //     // taste: 2,
            //     // quality: 3,
            //     reviewAvg: 0,
            //     date: '01-22-2020',
            //     content: "This was such a great cat. would definitely purchase again.This was such a great cat. would definitely purchase again.This wassuch a great cat. would definitely purchase again.This was such a great cat. would definitely purchase again.This was such a great cat. w/nould definitely purchase again.This was such a great cat. would definitely purchase again.This was such a great cat. would definitely purchase again.This was such a great cat. would definitely purchase again.",
            //     isReviewHelpful: 0,
            //     id: 1
            // },
            // {
            //     title: 'This is a great review',
            //     name: 'User_name',
            //     rating: [
            //       [ "value", 5 ],
            //       [ "taste", 4 ],
            //       [ "quality", 3 ]
            //     ],
            //     // value: 1,
            //     // taste: 2,
            //     // quality: 3,
            //     reviewAvg: 0,
            //     date: '01-22-2020',
            //     content: 'This was such a terrrible cat. would definitely purchase again.',
            //     isReviewHelpful: 0,
            //     id: 2
            // },

