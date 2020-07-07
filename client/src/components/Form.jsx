import React from 'react';

const Form = (props) => {
  return (
    <>
        <form type="hidden" id="createReviewForm" onSubmit={props.submitReview}>
            <div className="group">
                <label>Title</label>
                <input type="text" value={props.formData.title} onChange={(e) => props.changeField(e, 'title')} />
            </div>
            <div className="group">
                <label>Review</label>
                <textarea type="text" value={props.formData.password} onChange={(e) => props.changeField(e, 'content')} />
            </div>
            <div className="group inputReviewStars">
                <label>How would you rate this cat?</label>
                {[...Array(5)].map((n, i) => <i key={i} onChange={(e) => this.changeRating(e)} className="far fa-star"></i>)}
            </div>
            <div className="group">
                <label>Would you recommend this cat?</label>
                <input id="recommendationCheck" type="checkbox" onChange={(e) => props.changeField(e, 'recommendation')} />
            </div>
            <button className="primary">Submit</button>
        </form>
    </>
  
  )
}

export default Form;