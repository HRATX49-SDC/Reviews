import React from 'react';
import Ratings from './Ratings.jsx';

const Review = (props) => {
let doesRecommend = props.recommend
// if (doesRecommend > numberOfRecommendations
  return (
      <>
        <div className="card">
          <div className="review-title">{props.review.title}</div>
          <div className="content">
            <div className="card-rr">
              <div className="stars-container">
                <div className="starzzz">
                  <div className="rating">
                    {[...Array(5)].map((n, i) => i >= props.review.rating[0][1] ? <i key={i} className="far fa-star"></i> : <i key={i} className="fas fa-star"></i>)}
                  </div>
                </div>
              </div>
              <div className="recommendation">
                <span className="card recommendation-positive">
                  <div>
                    <svg width="24" height="24" viewBox="0 0 24 24"
                    xmlns="http://www.w3.org/2000/svg"
                    focusable="false">
                      <path d="M12.032 22.063c5.55 0 10.05-4.5 10.05-10.05 0-5.55-4.5-10.05-10.05-10.05-5.55 0-10.05 4.5-10.05 10.05 0 5.55 4.5 10.05 10.05 10.05zm0 .95c-6.075 0-11-4.925-11-11 0-6.076 4.925-11 11-11s11 4.924 11 11c0 6.075-4.925 11-11 11zm4.462-15.168a1 1 0 011.512 1.31l-6.5 7.5a1 1 0 01-1.38.126l-3.75-3a1 1 0 111.249-1.562l2.999 2.4 5.87-6.774z" 
                      fillRule="evenodd">
                      </path>
                    </svg>
                  </div>
                <span>Would recommend</span>
                </span>
              </div>
            </div>
            <div className="user-review-info">
                <span>{props.review.name}</span>
                " - "
                <span className="review-date-time">{props.review.date}</span>
            </div>
            <div className="review-main-content">{props.review.content}</div>
          </div>
          <div className="review-card-metrics">
            <div className="review-dash-overlay">
              <div className="reviews-dashboards">
                  {props.review.rating.map((item, key) => {
                      return (<Ratings
                      key={key}
                      item={item[props.index]}
                      value={item[key]}
                      />
                  )})}
              </div>
            </div>
            <div>
              <div className="review-washelpful">
              Did you find this review helpful?
              </div>
              <div className="helpful-overlay">
                <div className="">
                <button type="button" className="review-was-helpful-feedback help-button">
                  "Helpful"
                </button>
                <button type="button" className="review-not-helpful-feedback">
                  "Not Helpful"
                </button>
                <span className="report-button">

                </span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </>
    )
}


export default Review;