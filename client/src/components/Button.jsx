import React from 'react';
import Form from './Form.jsx';

const Button = (props) => {
  return (
    <>
      <div className="review-button-contaner">
        <button id="reviewButton" className="primary review-button" onClick={props.createReview}>Write a review</button>
        <div hidden id="createReview" className={props.expanded ? "modal" : "no-modal"}>
          <Form changeField={props.form} formData={props.formData} />
        </div>
      </div>
    </>
  )

}

export default Button;