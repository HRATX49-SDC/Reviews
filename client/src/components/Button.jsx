import React from 'react';

const Button = (props) => {
  return (
    <>
      <div className="review-button-contaner">
        <button className="primary review-button" onClick={props.createReview}>Write a review</button>
        <div hidden className={props.expanded ? {hidden: 'false'} : "no-modal"}>
          <form>
            <label>name</label>
          </form>
        </div>
      </div>
    </>
  )

}

export default Button;