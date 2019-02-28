import React from "react";
import { withRouter } from "react-router-dom";

const JobListingIndexItem = props => {
  return (
    <li
      className="job-listing-index-item"
      onClick={() => {
        props.history.push(`/job_listings/${props.id}`);
      }}
    >
      <div>
        <p className="job-listing-index-item-company">{props.company}</p>
        <p className="job-listing-index-item-title">{props.title}</p>
        <p className="job-listing-index-item-view"> view full posting </p>
      </div>
      <div>
        <p className="job-listing-index-item-location">{props.jobLocation}</p>
      </div>
    </li>
  );
};

export default withRouter(JobListingIndexItem);
