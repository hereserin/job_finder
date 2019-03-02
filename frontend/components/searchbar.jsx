import React from "react";
import { Link, withRouter } from "react-router-dom";
import { connect } from "react-redux";
import {
  fetchJobListing,
  searchJobListings,
  clearJobListings
} from "../actions/job_listings_actions";
import * as QueryParsers from "./../util/search_query_parsers";

class SearchBar extends React.Component {
  constructor() {
    super();
    this.handleSearchInput = this.handleSearchInput.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.parseUserInputToUrl = this.parseUserInputToUrl.bind(this);
    this.state = {
      searchInput: ""
    };
  }

  handleSearchInput(e) {
    return this.setState({
      searchInput: e.currentTarget.value
    });
  }

  handleSubmit() {
    const userQuery = this.parseUserInputToUrl();
    this.props.clearJobListings();
    this.props.searchJobListings({ query: userQuery });
    this.props.history.push(`/job_listings/search/=${userQuery}`);
  }

  parseUserInputToUrl() {
    const userQueryInput = this.state.searchInput;
    return QueryParsers.parseUserInputToUrl(userQueryInput);
  }

  handleSearchInputKeyPress(event) {
    if (event.key === "Enter") {
      this.handleSubmit();
    }
  }

  render() {
    return (
      <div className="search-bar">
        <div className="search-bar-input-and-button-container">
          Search Jobs{" "}
          <input
            className="tkc-search-bar-input"
            onKeyPress={e => this.handleSearchInputKeyPress(e)}
            placeholder="Job Title, Keywords or Company Name"
            onChange={this.handleSearchInput}
          />
          <button onClick={this.handleSubmit}>Search</button>
        </div>
      </div>
    );
  }
}

const mapDispatchToProps = dispatch => {
  return {
    fetchJobListings: () => {
      return dispatch(fetchJobListings());
    },
    searchJobListings: query => {
      return dispatch(searchJobListings(query));
    },
    clearJobListings: () => {
      return dispatch(clearJobListings());
    }
  };
};

export default withRouter(
  connect(
    null,
    mapDispatchToProps
  )(SearchBar)
);
