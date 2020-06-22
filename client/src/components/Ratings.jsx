import React from 'react';

const Ratings = (props) => {


let valueFill = props.value * 23;
let tasteFill = props.taste * 23;
let qualityFill = props.quality * 23;
// // console.log(props.item)
// let ratings = props.item;
// let ratingObj = {};
// let result = ratings.map((item, key) => {
//   if (ratingObj[ratings[key]] !== undefined) {
//     ratingObj[ratings[item]] = ratingObj[ratings[item]];
//   } else {
//     ratingObj[ratings[item]] = ratings[item];
//   }
//   return ratingObj;
// })

  return (
    <>
        {/* <div className="rating-container"> */}
          <div className="circle">
            <svg viewBox="0 0 1200 38">
              <circle stroke="#f7f7f7"
              fill="transparent"
              cx="19"
              cy="19"
              r="18"
              strokeWidth="2"
              />
              <circle stroke="red"
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
              fill="blue"
              x="19"
              y="24.6"
              >{props.item}</text>
            </svg>
          </div>
            <div className="rating-type">
              <h4>{props.item}</h4>
              <div className="rating-size">out of 5</div>
            </div>
        {/* </div> */}
    </>
  )
}
 
export default Ratings;