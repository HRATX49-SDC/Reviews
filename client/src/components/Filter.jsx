import React from 'react';

class Filter extends React.Component {
  constructor(props) {
    super(props);
      this.state = { 
        reviews: [],
        sortBy: 'most recent',
        filterBy: '',
        expanded: false,
        sortTypes: ['most recent', 'highest rated', 'lowest rated', 'most helpful'],
        filterTypes: ['5 stars', '4 stars', '3 stars', '2 stars', '1 star', '0 stars']
      }
  }
  render() { 
    return (
      <div className="filters ">
        <form>
          <select >
              {this.state.sortTypes.map((e, i) => { return <option key={i} value={i}>sort by {e}</option> })}
          </select>
          <select >
              {this.state.filterTypes.map((e, i) => { return <option key={i} value={e.id}>filter by {e}</option> })}
          </select>
        </form>
      </div>
    )
  }
}
 
export default Filter;