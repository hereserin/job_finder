import React from "react";
import { Link, withRouter } from "react-router-dom";
import { connect } from "react-redux";
import fetchJobListings from "./../actions/job_listings_actions";

class SearchBar extends React.Component {
  render() {
    return (
      <div className="search-bar">
        <div className="search-bar-input-and-button-container">
          Search Jobs <input placeholder="Search Jobs" />
          <button>Search</button>
        </div>
      </div>
    );
  }
}

const mapDispatchToProps = dispatch => {
  return {
    fetchJobListings: () => {
      return dispatch(fetchJobListings());
    }
  };
};

export default withRouter(
  connect(
    null,
    mapDispatchToProps
  )(SearchBar)
);
