import React from 'react';
import Ratings from './Ratings.jsx';

const Review = (props) => {

  return (
        <>
          <div className="">
            <div className="">
              <div>
                <h3>{props.review.title}</h3>
                <div className="">
                  {[...Array(5)].map((n, i) => i >= props.review.rating ? <i key={i} className="far fa-star"></i> : <i key={i} className="fas fa-star"></i>)}
                  <div className="">|</div>
                </div>
                <div className="">{props.review.user}-</div>
                <div className="">{props.review.writtenDate}</div>
                <div className="">{props.review.content}</div>
              </div> 
                <div className="">
                  {props.rating.map((item, key) => { return (<Ratings key={item} item={item} value={item[key]}/> )})}
                </div>
                  <button className="">Helpful</button>
                  <button className="">Not helpful</button>
                  <span style={{textDecoration: 'underline', color: 'grey'}}>Report review</span>
            </div>
          </div>
        </>
    )
}


export default Review;
