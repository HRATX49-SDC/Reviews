import React from 'react';
import Ratings from './Ratings.jsx';

const DashBoard = (props) => {
    return (
      <>
        <div>
          <div className="container">
            <h2>Guest Ratings & Reviews</h2>
            <div>
              <div className="reviewdashboard">
                <div className="rating-summary">
                  <div>
                  {props.data.avgRating}
                  </div>
                  <div className="rating">
                    {[...Array(5)].map((n, i) => i >= props.data.avgRating ? <i key={i} className="far fa-star"></i> : <i key={i} className="fas fa-star"></i>)}
                  </div>
                  <div>
                  <p>{props.data.numberOfRatings} star ratings</p>
                  </div>
                </div>
                <div className="reccomendation-summary">
                  <div>
                    <svg viewBox="0 0 1200 38">
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
                      >3.0</text>
                    </svg>
                    <div>
                      <p>{props.data.avgRating}% would recommend</p>
                    </div>
                    <div>
                      <p>{props.data.recommendations} recommendations</p>
                    </div>
                  </div>
                </div>
              </div>
              <Ratings />
            </div>
          </div>
        </div>
      </>
    )
}

export default DashBoard;


