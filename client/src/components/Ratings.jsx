import React from 'react';

const Ratings = (props) => {
var percentage = 60;
// console.log(props.value)
// console.log(props.item)

  return (
    <>
      <div className="">
        <div className=" ">
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
              // strokeDasharray={`${percentage}, 160`}
              strokeDasharray="80, 160"
              strokeLinecap="round"
              transform="rotate(-90 19 19)"
              />
              <text textAnchor="middle"
              fontSize="14"
              fill="blue"
              x="19"
              y="24.6"
              ></text>
            </svg>
            <div className="">
              <p>out of 5</p>
            </div>
        </div>
      </div>
    </>
  )
}
 
export default Ratings;