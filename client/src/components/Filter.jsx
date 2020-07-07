import React from 'react';

const Filter = (props) => {

    return (
      <>
        <div className="filters">
          <form>
            <select onChange={(e) => props.sort(e)}>
                {props.sortTypes.map((e, i) => { return ( <option key={i} value={e}>sort by {e}</option> )})}
            </select>
            <select id="filterSelector" onChange={(e) => props.filter(e)}>
                {[...Array(5)].map((n, i) => { return (<option key={i} value={n}>filter by {i} stars</option> )})}
            </select>
          {/* <button>sort by <span>{props.sortBy}</span></button>
          <button onChange={(e) => props.filterByRating(e)}>filter by <span>5 stars</span></button>
            <div className="sortList">
            {props.sortTypes.map((e, i)=> { return (<ul className="sortListItem" key={i} value={e} onChange={(e) => props.sort(e)}>{e}</ul>)})}
            </div>
            <div className="sortList">
            {props.filterTyes.map((e, i)=> { return (<ul className="sortListItem" key={i} value={e} onChange={(e) => props.sort(e)}>{e}</ul>)})}
            </div> */}
          </form>
        </div>
      </>
    )
}
 
export default Filter;