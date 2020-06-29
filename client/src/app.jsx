import React from 'react';
import axios from 'axios';
import Reviews from './components/Reviews.jsx';
import DashBoard from './components/Dashboard.jsx';
// import Button from './components/Button.jsx';


class App extends React.Component {
  constructor(props) {
    super(props);
      this.state = {
        reviews: [],
        catName: 'Luna',
            // {
            //     title: 'This is a great review',
            //     name: 'User_name',
            //     rating: [
            //       [ "Value", 1 ],
            //       [ "Taste", 2 ],
            //       [ "Quality", 3 ]
            //     ],
            //     reviewAvg: 0,
            //     date: '01-22-2020',
            //     content: " review w/ id = 1. This was such a great cat. would definitely purchase again.This was such a great cat. would definitely purchase again.This wassuch a great cat. would definitely purchase again.This was such a great cat. would definitely purchase again.This was such a great cat. w/nould definitely purchase again.This was such a great cat. would definitely purchase again.This was such a great cat. would definitely purchase again.This was such a great cat. would definitely purchase again.",
            //     reviewIsHelpful: 0,
            //     recommendation: "Would not recommend",
            //     id: 1
            // },
            // {
            //     title: 'This is another review',
            //     name: 'User_name',
            //     rating: [
            //       [ "Value", 4 ],
            //       [ "Taste", 2 ],
            //       [ "Quality", 1 ]
            //     ],
            //     reviewAvg: 0,
            //     date: '01-22-2020',
            //     content: 'review w/ id = 2. This was such a terrrible cat. would definitely purchase again.',
            //     reviewIsHelpful: 0,
            //     recommendation: "Would recommend",
            //     id: 2
            // }
            
        // filteredReviews: [],
        // sortBy: 'most recent',
        // filterBy: '',
        expanded: true,
        sortTypes: ['most recent', 'highest rated', 'lowest rated', 'most helpful'],
        filterTypes: ['5 stars', '4 stars', '3 stars', '2 stars', '1 star', '0 stars'],
        catName: 'Luna',
        numberOfReviews: 0,
        totalNumberOfRatings: 0,
        avgRating: 0,
        avgRatings: 
        [
          [ "Value", 0 ],
          [ "Taste", 0 ],
          [ "Quality", 0 ]
        ],
        wouldRecommend: 0,
        numberOfRatings: 12,
        recommendations: 0
      }
      this.getAverageRating = this.getAverageRating.bind(this);
      this.getAllReviewsAverages = this.getAllReviewsAverages.bind(this);
      this.getRecommendations = this.getRecommendations.bind(this);
      this.filterByRating = this.filterByRating.bind(this);
      this.getReviews = this.getReviews.bind(this);
      this.updateHelpfulCounter = this.updateHelpfulCounter.bind(this);
      this.sortBy = this.sortBy.bind(this);
      this.writeReview = this.writeReview.bind(this);
  }


  filterByRating(e) {
    let filter = e.target.value;
    if (filter === " 5 stars") {
        this.setState({ reviews: this.state.reviews });
    }
  }

  getRecommendations() {
    let reviews = this.state.reviews;
    let totalRecommendations = 0;
    for (var i = 0; i < reviews.length; i++) {
        let currentReview = reviews[i].recommendation;
        if (currentReview === "Would recommend") {
          totalRecommendations ++;
        }
    }
    this.setState({ recommendations: totalRecommendations });
  }

  getAverageRating() {
    var totalRatings = 0;
      var reviews = this.state.reviews;
      for (var i = 0; i < reviews.length; i++) {
      var rating = reviews[i].rating;
        for (var j = 0; j < rating[i].length; j++) {
        var currentRating = rating[i][1]
          totalRatings += currentRating;
          var avg = totalRatings / 5;
        }
      }
      this.setState({
        avgRating: avg,
        totalNumberOfRatings: totalRatings,
        numberOfReviews: this.state.reviews.length
      });
  }

  getAllReviewsAverages() {
      var avgs = this.state.avgRatings;
      var reviews = this.state.reviews;
      var totalVal = 0,
          totalTaste = 0,
          totalQuality = 0;
      for (var i = 0; i < reviews.length; i++) {
        var rating = reviews[i].rating,
          currentVal = rating[0][1],
          currentTaste = rating[1][1],
          currentQuality = rating[2][1];
        totalVal += currentVal;
        totalTaste += currentTaste;
        totalQuality += currentQuality;
      }
      let avgVal = totalVal / reviews.length,
       avgTaste = totalTaste / reviews.length,
       avgQuality = totalQuality / reviews.length,
       averages = [
        ["Value", avgVal],
        ["Taste", avgTaste],
        ["Quality", avgQuality]
      ]
        this.setState({ avgRatings: averages });
  }

  sortBy(e) {
    let type = e.target.value;
    let filteredReviews = this.state.reviews;
    if (type === 'most recent')
        filteredReviews = this.state.reviews.sort((a, b) => { return a.date - b.date })
    else if (type === 'highest rated')
        filteredReviews = this.state.reviews.sort((a, b) => { return b.rating - a.rating })
    else if (type === 'lowest rated')
        filteredReviews = this.state.reviews.sort((a, b) => { return a.rating - b.rating })
    else if (type === 'most helpful')
        filteredReviews = this.state.reviews.sort((a, b) => { return b.reviewIsHelpful - a.reviewIsHelpful })
    else { filteredReviews = this.state.reviews.sort((a, b) => { return a.id - b.id }) }
    this.setState({ reviews: filteredReviews })
  }

  updateHelpfulCounter(e, i) {
    let reviews = this.state.reviews;
    let review = reviews[i];
    review.review_is_helpful = review.review_is_helpful += 1;
    this.setState({ reviews });
    console.log(review.review_is_helpful)
  }

  getReviews() {
    axios.get(`/reviews/${this.state.catName}`)
    // {
    // params: {
    //   catName
    // }
    // })
    // 
    .then(res => {
      this.setState({
      reviews: [res.data]
      })
    })
    .catch(err => {
      console.log(err, 'err getting reviews')
    })
  }

  writeReview() {
    let modalIsShown = this.state.expanded;
    modalIsShown = !modalIsShown;
    this.setState({ modalIsShown });
  }

  componentDidMount() {
    axios.get(`/reviews/${this.state.catName}`)
      .then( res => {
      console.log(res.data)
      let cats = res.data;
      cats.forEach((review) => {
        review.rating = [
          ['Value', review.review_value],
          ['Taste', review.review_taste],
          ["Quality", review.review_quality]
        ]
      })
      this.setState({
      reviews: cats
      })
      console.log(res.data)
    })
    .catch(err => {
      console.log(err, 'err getting reviews')
    })
    this.getAverageRating();
    this.getAllReviewsAverages();
    this.getRecommendations();
  }



  render() {
    return ( 
      <>
        <DashBoard data={this.state} averages={this.state.avgRatings} />
        {/* <button type="button" onClick={(e) => this.getAverageRating(e)}>get Average rating</button> */}
        <Reviews
          reviews={this.state.reviews}
          state={this.state}
          sort={(e) => this.sortBy(e)}
          sortTypes={this.state.sortTypes}
          filterTypes={this.state.filterTypes}
          helpful={this.updateHelpfulCounter}
          createReview={this.writeReview}
          expanded={this.state.expanded}
        />
      </>
     )
  }
}
 
export default App;