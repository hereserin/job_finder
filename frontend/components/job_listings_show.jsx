import React from "react";
import { connect } from "react-redux";
import { Link, withRouter } from "react-router-dom";
import { fetchJobListing } from "../actions/job_listings_actions";
import Loader from "./loader";
import ApplyNowLink from "./job_listings_apply_now";
import commonmark from "commonmark";

class JobListingsShow extends React.Component {
  componentDidMount() {
    this.props.fetchJobListing(this.props.jobListingId);
  }

  displayDescription() {
    let testStr = "## Hello *world*";
    let markdownStr = "boo";
    const reader = new commonmark.Parser();
    const writer = new commonmark.HtmlRenderer();
    const parsed = reader.parse(markdownStr);
    const result = writer.render(parsed);
    const htmlObj = { __html: result };
    return <div dangerouslySetInnerHTML={htmlObj} />;
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
    const descriptionString = "<p>hello</p>";

    return (
      <section className="job-listing-show">
        <h2 className="job-listing-show-title">{jobListing.title}</h2>
        <h3 className="company-name-in-job-show">
          {company.name.toUpperCase()}
        </h3>
        <ApplyNowLink applyLink={jobListing.application_url} />
        <div className="job-listing-show-content">
          <aside className="job-listing-show-sidebar">
            <img className="company-logo" src={company.logo_url} />
            <br />
            <h3>Company Info:</h3>
            {company.description}
          </aside>
          <div className="job-listing-show-description">
            {this.displayDescription()}
            {jobListing.description}
            <br />
            <ApplyNowLink applyLink={jobListing.application_url} />
          </div>
        </div>
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
