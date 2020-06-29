import React from 'react';

const Button = (props) => {
  return (
    <>
      <div className="review-button-contaner">
        <button className="primary review-button" onClick={props.createReview}>Write a review</button>
        <div className={props.expanded ? "modal" : "no-modal"}>
        </div>
      </div>
    </>
  )

}

export default Button;