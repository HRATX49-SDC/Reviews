import React from 'react';
import Ratings from './Ratings.jsx';

const DashBoard = (props) => {
    return (
      <>
        <div>
          <div className="container">
            <div>
              <div className="reviewdashboard">
                <h2>Guest Ratings & Reviews</h2>
                <div className="top-dash-rating">
                  <div className="dash-primary-summary">
                    <div className="first">
                      <div className="averrating">
                        {props.data.avgRating}
                      </div>
                      <div className="starzzz">
                        {[...Array(5)].map((n, i) => i >= props.data.avgRating ? <i key={i} className="far fa-star"></i> : <i key={i} className="fas fa-star"></i>)}
                      </div>
                      <div className="h-text">
                        <div>{props.data.totalNumberOfRatings} star ratings</div>
                      </div>
                    </div>
                      <div className="reccomendation-summary">
                        <div className="circle-overlay">
                          <div className="recommend-circle">
                            <svg viewBox="0 0 38 38">
                              <circle stroke="#f7f7f7"
                              fill="transparent"
                              cx="19"
                              cy="19"
                              r="18"
                              strokeWidth="2"
                              />
                              <circle stroke="#008300"
                              fill="transparent"
                              cx="19"
                              cy="19"
                              r="18"
                              strokeWidth="2"
                              strokeDasharray={`${props.data.totalNumberOfRatings}, 160`}
                              strokeLinecap="round"
                              transform="rotate(-90 19 19)"
                              />
                              <text textAnchor="middle"
                              fontSize="14"
                              fill="b85300"
                              x="19"
                              y="24.6"
                              >{props.data.recommendationPercent}</text>
                            </svg>
                            </div>
                        </div>

                            <div className="percent-recommend">
                              {props.data.recommendationPercent}% would recommend
                            </div>
                          <div className="total-recs">
                            {props.data.recommendations} {props.data.recommendations !== 1 ? 'recommendations' : 'recommendation'}
                          </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div className="review-dash-overlay">
                <div className="reviews-dashboards">
                  {props.averages.map((item, i) => { return ( <Ratings key={i} item={item[0]} value={item[1]}  />)})}
                </div>
              </div>
            </div>
          </div>
        </div>
      </>
    )
}

export default DashBoard;