import React from 'react';
// import axios from 'axios';
import Filter from './components/Filter.jsx';
import Reviews from './components/Reviews.jsx';
import DashBoard from './components/Dashboard.jsx';

class App extends React.Component {
  constructor(props) {
    super(props);
      this.state = {
        reviews: [
            {
                title: 'This is a great review',
                user: 'User_name',
                rating: [
                  { "value": 1 },
                  { "taste": 5 },
                  { "quality": 5 },
                ],
                writtenDate: '01-22-2020',
                content: 'This was such a great cat. would definitely purchase again.',
                isReviewHelpful: 'helpful',
                id: 1
            },
            {
                title: 'This is a great review',
                user: 'User_name',
                rating: [
                  { "value": 3 },
                  { "taste": 1 },
                  { "quality": 5 }
                ],
                // ],
                writtenDate: '01-22-2020',
                content: 'This was such a great cat. would definitely purchase again.',
                isReviewHelpful: 'helpful',
                id: 2
            },
        ],
        numberOfReviews: 0,
        totalNumberOfRatings: 0,
        avgRating: 0,
        wouldRecommend: null,
        numberOfRatings: null,
        recommendations: 3
      }
      this.getAverageRating = this.getAverageRating.bind(this);
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

  // componentDidMount() {
  // this.getAverageRating();
  //   axios.get('/Purrget')
  //     .then(res => {
  //       console.log(res.data)
  //       this.setState({
  //         reviews: res.data,
            
  //       })
  //     })
  //     .catch(err => {
  //     console.log('err', err) ;
  //     })
    // }

  render() {
    return ( 
      <>
        <DashBoard data={this.state} />
        <button type="button" onClick={(e) => this.getAverageRating(e)}>get Average rating</button>
        <Filter state={this.state} />
        <Reviews reviews={this.state.reviews}/>
        <button className="primary">Write a review</button>
      </>
     )
  }
}
 
export default App;

// {
//                 title: '2',
//                 user: '2',
//                 rating: {
//                     "value": 1,
//                     "taste": 3,
//                     "quality": 3
//                 },
//                 writtenDate: '01-22-2020',
//                 content: 'This was such a great cat. would definitely purchase again.',
//                 isReviewHelpful: 'helpful',
//             },
//             {
//                 title: '1',
//                 user: '1',
//                 rating: {
//                     "value": 1,
//                     "taste": 3,
//                     "quality": 3
//                 },
//                 writtenDate: '01-23-2020',
//                 content: 'This was such a great cat. would definitely purchase again.',
//                 isReviewHelpful: 'helpful',
//             },
//             {
//                 title: '3',
//                 user: '3',
//                 rating: {
//                     "value": 1,
//                     "taste": 3,
//                     "quality": 3
//                 },
//                 writtenDate: '01-22-2020',
//                 content: 'This was such a great cat. would definitely purchase again.',
//                 isReviewHelpful: 'helpful',
//             },

