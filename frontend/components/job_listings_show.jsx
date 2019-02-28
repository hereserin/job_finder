import React from "react";
import { connect } from "react-redux";
import { Link, withRouter } from "react-router-dom";
import { fetchJobListing } from "../actions/job_listings_actions";

class JobListingsShow extends React.Component {
  componentDidMount() {
    this.props.fetchJobListing(this.props.jobListingId);
  }

  render() {
    const jobListing = this.props.jobListing;
    if (this.props.jobListing === undefined) {
      return <div>loading...</div>;
    }
    return (
      <section>
        {this.props.jobListingId}
        <h2>{jobListing.title}</h2>
      </section>
    );
  }
}

const mapStateToProps = ({ entities }, ownProps) => {
  return {
    jobListingId: ownProps.match.params.jobListingId,
    jobListing: entities.jobListings[ownProps.match.params.jobListingId]
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchJobListing: id => {
      return dispatch(fetchJobListing(id));
    }
  };
};

export default withRouter(
  connect(
    mapStateToProps,
    mapDispatchToProps
  )(JobListingsShow)
);
