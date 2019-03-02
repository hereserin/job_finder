import React from "react";

const ApplyNowLink = props => (
  <a href={props.applyLink}>
    <div className="apply-now-link">
      APPLY NOW
      <i className="fas fa-external-link-alt" />
    </div>
  </a>
);

export default ApplyNowLink;
