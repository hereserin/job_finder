import React from "react";
import { connect } from "react-redux";
import { Link, withRouter } from "react-router-dom";
import {
  fetchJobListings,
  searchJobListings,
  clearJobListings
} from "../actions/job_listings_actions";
import JobListingIndexItem from "./job_listing_index_item";
import FilterMenu from "./filter_menu";
import * as QueryParsers from "./../util/search_query_parsers";

class JobListingsIndex extends React.Component {
  componentDidMount() {
    if (this.props.query === undefined) {
      this.props.fetchJobListings();
    } else if (
      !this.props.loading &&
      Object.keys(this.props.jobListings).length === 0
    ) {
      const userQuery = this.parseUrlToUserInput();
      this.props.searchJobListings({ query: userQuery });
    }
  }

  parseUrlToUserInput() {
    const urlQuery = this.props.match.params.query;
    return QueryParsers.parseUrlToUserInput(urlQuery);
  }

  mapJobsListings() {
    const jobListings = this.props.jobListings;
    const jobsListingsArray = Object.keys(jobListings).map(id => {
      return jobListings[id];
    });
    console.log(jobsListingsArray);
    return jobsListingsArray;
  }

  composeJobsList() {
    const jobsArr = this.mapJobsListings();
    console.log(jobsArr);
    const list = jobsArr.map(jobListing => {
      return (
        <JobListingIndexItem
          key={jobListing.id}
          id={jobListing.id}
          title={jobListing.title}
          company={jobListing.company_name.toUpperCase()}
          jobLocation={jobListing.location}
        />
      );
    });
    return list;
  }

  render() {
    return (
      <div className="job-search-container">
        <aside className="job-search-filter-menu">
          <FilterMenu />
        </aside>
        <section className="job-listing-index-section">
          <ul className="job-listing-index">{this.composeJobsList()}</ul>
        </section>
      </div>
    );
  }
}

const mapStateToProps = ({ entities, ui }, ownProps) => {
  return {
    jobListings: entities.jobListings,
    query: ownProps.match.params.query,
    loading: ui.loading.jobListingsLoading
  };
};

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
    mapStateToProps,
    mapDispatchToProps
  )(JobListingsIndex)
);
