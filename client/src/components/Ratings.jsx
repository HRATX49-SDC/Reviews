import React from 'react';

const Ratings = (props) => {

let valueFill = props.value * 23;

  return (
    <>
        <div className="rating-container">
          <div className="circle">
            <svg viewBox="0 0 38 38">
              <circle stroke="#f7f7f7"
              fill="transparent"
              cx="19"
              cy="19"
              r="18"
              strokeWidth="2"
              />
              <circle stroke= {`${props.value < 3 ? `rgb(232, 105, 0)` : `rgb(0, 131, 0)` }`}
              fill="transparent"
              cx="19"
              cy="19"
              r="18"
              strokeWidth="2"
              strokeDasharray={`${valueFill}, 160`}
              strokeLinecap="round"
              transform="rotate(-90 19 19)"
              />
              <text textAnchor="middle"
              fontSize="14"
              fill={`${props.value < 3 ? `rgb(232, 105, 0)` : `rgb(0, 131, 0)` }`}
              x="19"
              y="24.6"
              >{props.value}</text>
            </svg>
          </div>
            <div className="rating-type">
              <div>{props.item}</div>
              <div className="rating-size">out of 5</div>
            </div>
        </div>
        {/* </div> */}
    </>
  )
}
 
export default Ratings;
