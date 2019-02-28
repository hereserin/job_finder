import React from "react";
import { connect } from "react-redux";
import { Link, withRouter } from "react-router-dom";
import { fetchJobListings } from "../actions/job_listings_actions";

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
        <li key={jobListing.id}>
          {jobListing.title}
          <span
            onClick={() => {
              this.props.history.push(`/job_listings/${jobListing.id}`);
            }}
          >
            {" "}
            ...CLICK HERE
          </span>
        </li>
      );
    });
    return list;
  }

  render() {
    return (
      <section>
        <h2>Job Listings: </h2>
        <ul>{this.composeJobsList()}</ul>
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
