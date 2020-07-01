import React from 'react';
import Ratings from './Ratings.jsx';
import moment from 'moment'
// import Star from './Star.jsx';

const Review = (props) => {
  let positive = 
    <svg width="24" height="24" viewBox="0 0 24 24"
                    xmlns="http://www.w3.org/2000/svg"
                    focusable="false">
                      <path d="M12.032 22.063c5.55 0 10.05-4.5 10.05-10.05 0-5.55-4.5-10.05-10.05-10.05-5.55 0-10.05 4.5-10.05 10.05 0 5.55 4.5 10.05 10.05 10.05zm0 .95c-6.075 0-11-4.925-11-11 0-6.076 4.925-11 11-11s11 4.924 11 11c0 6.075-4.925 11-11 11zm4.462-15.168a1 1 0 011.512 1.31l-6.5 7.5a1 1 0 01-1.38.126l-3.75-3a1 1 0 111.249-1.562l2.999 2.4 5.87-6.774z" 
                      fillRule="evenodd">
                      </path>
                    </svg>,
   negative = 
  <svg width="24" height="24" viewBox="0 0 24 24" 
  xmlns="http://www.w3.org/2000/svg" focusable="false">
    <path d="M12.032 22.063c5.55 0 10.05-4.5 10.05-10.05 0-5.55-4.5-10.05-10.05-10.05-5.55 
    0-10.05 4.5-10.05 10.05 0 5.55 4.5 10.05 10.05 10.05zm0 .95c-6.075 0-11-4.925-11-11 0-6.076 
    4.925-11 11-11s11 4.924 11 11c0 6.075-4.925 11-11 11zM12 10.586l4.243-4.243 1.414 1.414L13.414 
    12l4.243 4.243-1.414 1.414L12 13.414l-4.243 4.243-1.414-1.414L10.586 12 6.343 7.757l1.414-1.414L12 10.586z"
    fillRule="evenodd">
    </path>
  </svg>;
  return (
      <>
        <div className="card">
          <div className="review-title">{props.review.review_title}</div>
          <div className="review-card-wrapper">
            <div className="content">
              <div className="card-rr">
                <div className="stars-container">
                  <div className="starzzz">
                    <div className="rating">
                      {[...Array(5)].map((n, i) => i >= props.review.review_value ? <i key={i} className="far fa-star"></i> : <i key={i} className="fas fa-star"></i>)}
                      {/* {[...Array(5)].map((n, i) => n >= props.review.rating[0][1] ? <Star key={i} fill={n}/> : <Star key={i} fill={n} />)} */}
                    </div>
                  </div>
                </div>
                <div className="recommendation">
                  <span className={props.review.recommendation === "Would recommend" ? "recommendation-positive" : "recommendation-negative"}>
                    {/* <div> */}
                    {props.review.recommendation === "Would recommend" ? positive : negative}
                      {/* <svg width="24" height="24" viewBox="0 0 24 24"
                      xmlns="http://www.w3.org/2000/svg"
                      focusable="false">
                        <path d="M12.032 22.063c5.55 0 10.05-4.5 10.05-10.05 0-5.55-4.5-10.05-10.05-10.05-5.55 0-10.05 4.5-10.05 10.05 0 5.55 4.5 10.05 10.05 10.05zm0 .95c-6.075 0-11-4.925-11-11 0-6.076 4.925-11 11-11s11 4.924 11 11c0 6.075-4.925 11-11 11zm4.462-15.168a1 1 0 011.512 1.31l-6.5 7.5a1 1 0 01-1.38.126l-3.75-3a1 1 0 111.249-1.562l2.999 2.4 5.87-6.774z" 
                        fillRule="evenodd">
                        </path>
                      </svg> */}
                    {/* </div> */}
                  </span>
                  <span className="rec-padding">{props.review.recommendation}</span>
                </div>
              </div>
              <div className="user-review-info">
                <span>{props.review.review_author}</span>
                  - 
                <span className="review-date-time"> {moment(props.review.review_date).startOf('day').fromNow()}</span>
              </div>
              <div className="review-main-content">{props.review.review_content}</div>
              </div>
              <div className="review-card-metrics">
                <div className="review-dash-overlay">
                  <div className="reviews-dashboards">
                      {props.review.rating.map((item, i) => {
                            return ( <Ratings
                            key={i}
                            item={item[0]}
                            value={item[1]}
                            index={i}
                            // taste={props.review.review_taste}
                            // value={props.review.review_value}
                            // quality={props.review.review_quality}
                            />
                      )})}
                  </div>
              
                  <div className="helpful-button-overlay">
                    <div className="review-washelpful">
                      {`${props.review.review_is_helpful > 0 ? `${props.review.review_is_helpful}` + ' guests found this review helpful. Did you?' : "Did you find this review helpful?"}`}
                    </div>
                  {/* <div className="helpful-overlay"> */}
                    <div>
                      <button type="button" className="review-was-helpful-feedback help-button" onClick={(e) => props.helpful(e, props.index)}>
                        Helpful
                      </button>
                      <button type="button" className="review-was-helpful-feedback help-button">
                        Not Helpful
                      </button>
                      <span className="report-button">
                      Report Review
                      </span>
                    </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </>
    )
}


export default Review;