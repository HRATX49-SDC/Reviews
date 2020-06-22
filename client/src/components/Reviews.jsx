import React from 'react';
import Review from './Review.jsx';

const Reviews = (props) => {
  return (
    <>
      <div>
        {props.reviews.map((review, i) => { return <Review key={i} review={review} index={i}  />})}
      </div>
    </>
  )
}

export default Reviews;
