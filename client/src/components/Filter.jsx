import React from 'react';

const Filter = (props) => {

    return (
      <>
        <div className="filters">
          <form>
            <select onChange={(e) => props.sort(e)}>
                {props.sortTypes.map((e, i) => { return ( <option key={i} value={e}>sort by {e}</option> )})}
            </select>
            <select onChange={(e) => props.filter(e)}>
                {props.filterTypes.map((e, i) => { return (<option key={i} value={e}>filter by {e}</option> )})}
            </select>
          </form>
        </div>
      </>
    )
}
 
export default Filter;
  // constructor(props) {
  //   super(props);
  //     this.state = { 
  //       reviews: [],
  //       sortBy: 'most recent',
  //       filterBy: '',
  //       expanded: false,
  //       sortTypes: ['most recent', 'highest rated', 'lowest rated', 'most helpful'],
  //       filterTypes: ['5 stars', '4 stars', '3 stars', '2 stars', '1 star', '0 stars']
  //     }
  // }
  // render() { 