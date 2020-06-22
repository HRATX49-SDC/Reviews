import React from 'react';
import Review from './Review.jsx';

const Reviews = (props) => {
  return (
    <>
      <div className="reviews-h">
        {props.reviews.map((review, i) => { return <Review key={review.id} review={review} index={i}  />})}
      </div>
    </>
  )
}

export default Reviews;
