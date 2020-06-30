import React from 'react';
import axios from 'axios';
import Review from './Review.jsx';
import Filter from './Filter.jsx';
import Button from './Button.jsx';


const Reviews = (props) => {
    return (
      <>

        <Button expanded={props.expanded} createReview={props.createReview}/>
        <div className="reviews-h">
        <Filter sort={(e) => props.sort(e)} sortTypes={props.sortTypes} filterTypes={props.filterTypes}/>
        <div className="matching-reviews">We found {props.state.numberOfReviews} matching reviews</div>
          {props.reviews.map((review, i) =>  {
               return ( <Review 
                    key={i}
                    id={review.id}
                    review={review}
                    index={i}
                    sort={(e) => props.sortBy(e)}
                    sortTypes={props.sortTypes}
                    // filterTypes={this.state.filterTypes}
                    helpful={props.helpful}
                    createReview={props.writeReview}
                    expanded={props.expanded}
                  />
          )})}
        </div>
        <Button createReview={props.createReview}/>
      </>
    )
}

export default Reviews;