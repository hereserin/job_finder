import React from "react";
import { connect } from "react-redux";
import { Link, withRouter } from "react-router-dom";
import { fetchJobListing } from "../actions/job_listings_actions";
import Loader from "./loader";

class JobListingsShow extends React.Component {
  componentDidMount() {
    this.props.fetchJobListing(this.props.jobListingId);
  }

  render() {
    if (
      this.props.loading ||
      this.props.jobListings[this.props.jobListingId] === undefined ||
      this.props.companies[
        this.props.jobListings[this.props.jobListingId].companyId
      ] === undefined
    ) {
      return <Loader />;
    }
    const jobListing = this.props.jobListings[this.props.jobListingId];
    const company = this.props.companies[jobListing.companyId];

    return (
      <section className="job-listing-show">
        <h2>{jobListing.title}</h2>
        <h3 className="company-name-in-job-description">
          {company.name.toUpperCase()}
        </h3>
        <img className="company-logo" src={company.logo_url} />
        <p>{jobListing.description}</p>
      </section>
    );
  }
}

const mapStateToProps = ({ entities, ui }, ownProps) => {
  return {
    jobListingId: ownProps.match.params.jobListingId,
    jobListings: entities.jobListings,
    loading: ui.loading.jobListingLoading,
    companies: entities.companies
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
