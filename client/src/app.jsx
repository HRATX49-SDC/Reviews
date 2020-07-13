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
        expanded: false,
        sortTypes: ['most recent', 'highest rated', 'lowest rated', 'most helpful'],
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
        recommendationPercent: 0,
        form: {
          title: '',
          content: '',
          rating: {
            'Value': 0,
            'Taste': 0,
            'Quality': 0
          }
        }
      }
      this.getAverageRating = this.getAverageRating.bind(this);
      this.getAllReviewsAverages = this.getAllReviewsAverages.bind(this);
      this.getRecommendations = this.getRecommendations.bind(this);
      this.filterByRating = this.filterByRating.bind(this);
      this.getReviews = this.getReviews.bind(this);
      this.updateHelpfulCounter = this.updateHelpfulCounter.bind(this);
      this.sortBy = this.sortBy.bind(this);
      this.writeReview = this.writeReview.bind(this);
      this.changeField = this.changeField.bind(this);
  }

  filterByRating(e) {
    let filter = e.target.value;
    axios.get('./reviews' , { params: { filter }})
    .then(res => {
      this.setState({
      reviews: res.data,
      numberOfReviews: res.data.length
      })
    })
    .catch(err => {
      console.log(err, 'err getting filtered reviews');
    })
  }

  getRecommendations(reviews) {
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
    console.log(type)
    let filteredReviews = this.state.reviews;
    if (type === 'most recent')
        filteredReviews = this.state.reviews.sort((a, b) => { return a.review_date - b.review_date })
    else if (type === 'highest rated')
        filteredReviews = this.state.reviews.sort((a, b) => { return b.review_value - a.review_value })
    else if (type === 'lowest rated')
        filteredReviews = this.state.reviews.sort((a, b) => { return a.review_value - b.review_value })
    else if (type === 'most helpful')
        filteredReviews = this.state.reviews.sort((a, b) => { return b.review_Is_Helpful - a.review_Is_Helpful })
    else { filteredReviews = this.state.reviews.sort((a, b) => { return a.id - b.id }) }
    this.setState({
      reviews: filteredReviews,
    })
  }

  updateHelpfulCounter(e, i) {
    let reviews = this.state.reviews;
    let review = reviews[i];
    review.review_is_helpful = review.review_is_helpful += 1;
    this.setState({ reviews });
  }

  getReviews(catName) {
    axios.get('/reviews', {params: {catName}})
      .then((res) => {
      let reviews = res.data;
      console.log(reviews);
      reviews.forEach((review) => {
        review.rating = [
          ['Value', review.review_value],
          ['Taste', review.review_taste],
          ["Quality", review.review_quality]
        ]
      })
      window.totalReviews = res.data.length;
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
    var form = this.state.form;
    $('#reviewButton').on('click', function() {
      $('#createReview').toggle();
    });
    this.setState({ form });
  }

  componentDidMount() {
    this.getReviews('Maxime Hansen');
    $('body').on('submit', '.form', (e) => {
      console.log(e.target[0].value);
      let formatted = e.target[0].value.replace(/(^\w|\s\w)(\S*)/g, (_,m1,m2) => m1.toUpperCase()+m2.toLowerCase());
      this.getReviews(formatted);
    });
     $('body').on('click', '.catRows', (e) => {
      this.getReviews(e.currentTarget.value);
    });
    $('body').on('click', '.catLinks', (e) => {
      this.getReviews(e.currentTarget.value);
    });
  }

  changeField(e, field) {
    let form = this.state.form;
    form[field] = event.target.value;
    console.log(form);
    this.setState({ form });
  }



  render() {
    return ( 
      <>
        <DashBoard data={this.state} totalRatings={this.state.totalNumberOfRatings} averages={this.state.avgRatings} />
        <Reviews
          reviews={this.state.reviews}
          state={this.state}
          sort={(e) => this.sortBy(e)}
          sortTypes={this.state.sortTypes}
          filter={this.filterByRating}
          helpful={this.updateHelpfulCounter}
          createReview={this.writeReview}
          expanded={this.state.expanded}
          formData={this.state.form}
          form={this.changeField}
        />
      </>
     )
  };
};
 
export default App;