import React from 'react';
import axios from 'axios';
import $ from "jquery";
import Reviews from './components/Reviews.jsx';
import DashBoard from './components/Dashboard.jsx';


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
        expanded: false,
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
        numberOfRatings: 0,
        recommendations: 0,
        recommendationPercent: 0
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

  getRecommendations(reviews) {
  console.log(reviews)
    var totalRecommendations = 0;
    for (var i = 0; i < reviews.length; i++) {
        var currentRecommendation = reviews[i].recommendation;
        if (currentRecommendation === "Would recommend") {
          totalRecommendations ++;
        }
    }
    var total = totalRecommendations / reviews.length;
    var percent = total * 100;
    this.setState({
    recommendations: totalRecommendations,
    recommendationPercent: percent
    });
  }

  getAverageRating(reviews) {
    var reviews = reviews;
      for (var i = 0; i < reviews.length; i++) {
        var totalRatings = 0;
        var rating = reviews[i].rating;
        for (var j = 0; j < rating.length; j++) {
        var currentRating = rating[j][1]
          totalRatings += currentRating;
        }
      }
      var avg = this.state.totalNumberOfRatings / reviews.length;
      this.setState({
        avgRating: avg
      });
  }

  getAllReviewsAverages(reviews) {
      var reviews = reviews;
      var totalStars = 0,
          totalVal = 0,
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
        totalStars += totalVal;
      let avgVal = totalVal / reviews.length,
       avgTaste = totalTaste / reviews.length,
       avgQuality = totalQuality / reviews.length,
       averages = [
        ["Value", Math.round(avgVal)],
        ["Taste", Math.round(avgTaste)],
        ["Quality", Math.floor(avgQuality)]
      ];
        this.setState({
        avgRatings: averages,
        totalNumberOfRatings: totalStars
        });
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
  }

  getReviews() {
    axios.get(`/reviews/${this.state.catName}`)
      .then( (res) => {
      let reviews = res.data;
      reviews.forEach((review) => {
        review.rating = [
          ['Value', review.review_value],
          ['Taste', review.review_taste],
          ["Quality", review.review_quality]
        ]
      })
      this.setState({
      reviews: reviews,
      numberOfReviews: reviews.length
      })
      return this.state.reviews;
    })
    .then(res => {
      this.getAllReviewsAverages(res);
      this.getAverageRating(res);
      this.getRecommendations(res);
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
    
    $('#search').on('submit', function() {
      let data = $('#search :input')
    })

    $('#login_form').submit(function() {
      var data = $("#login_form :input").serializeArray();
      alert('Handler for .submit() called.');
    })
    this.getReviews('Luna')
  }



  render() {
    return ( 
      <>
        <DashBoard data={this.state} totalRatings={this.state.totalNumberOfRatings} averages={this.state.avgRatings} />
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