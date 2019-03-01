import React from "react";
import { connect } from "react-redux";
import { Link, withRouter } from "react-router-dom";
import { fetchJobListings } from "../actions/job_listings_actions";
import JobListingIndexItem from "./job_listing_index_item";

class JobListingsIndex extends React.Component {
  componentDidMount() {
    this.props.fetchJobListings();
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
      <section>
        <ul className="job-listing-index">{this.composeJobsList()}</ul>
      </section>
    );
  }
}

const mapStateToProps = ({ entities }) => {
  return {
    jobListings: entities.jobListings
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchJobListings: () => {
      return dispatch(fetchJobListings());
    }
  };
};

export default withRouter(
  connect(
    mapStateToProps,
    mapDispatchToProps
  )(JobListingsIndex)
);
