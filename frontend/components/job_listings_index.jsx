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
import Loader from "./loader";

class JobListingsIndex extends React.Component {
  constructor(props) {
    super(props);
    this.mapThroughFilters = this.mapThroughFilters.bind(this);
  }

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

  mapThroughFilters() {
    const filters = this.props.filters;
    const allJobListings = this.props.jobListings;
    const allListingsIdsArray = Object.keys(allJobListings);
    const allListingsArray = allListingsIdsArray.map(id => {
      return allJobListings[id];
    });
    const filteredListingsArray = allListingsArray
      .filter(listing => {
        if (
          filters.experienceLevels !== undefined &&
          filters.experienceLevels.length > 0
        ) {
          return filters.experienceLevels.includes(listing.experience_level);
        }
        return true;
      })
      .filter(listing => {
        if (filters.regions !== undefined && filters.regions.length > 0) {
          return filters.regions.includes(listing.region_id);
        }
        return true;
      })
      .filter(listing => {
        if (filters.skills !== undefined && filters.skills.length > 0) {
          let matchExists = false;
          listing.skills.forEach(skillId => {
            if (filters.skills.includes(skillId)) {
              matchExists = true;
            }
          });
          return matchExists;
        }
        return true;
      });
    return filteredListingsArray;
  }

  mapJobsListings() {
    const filteredJobListings = this.mapThroughFilters();
    const jobListings = this.props.jobListings;
    const jobsListingsArray = filteredJobListings.map(id => {
      return jobListings[id];
    });
    return filteredJobListings;
  }

  composeJobsList() {
    const jobsArr = this.mapJobsListings();
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
    if (list.length === 0) {
      return (
        <li>
          <h4>(no results)</h4>
        </li>
      );
    }
    return list;
  }

  render() {
    if (this.props.loading || this.props.jobListings === undefined) {
      return <Loader />;
    }
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
    loading: ui.loading.jobListingsLoading,
    filters: ui.filters
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
