import React from "react";
import { Link, withRouter } from "react-router-dom";

const NavBar = props => {
  return (
    <nav>
      <h2
        className=".job-finder-title"
        onClick={() => {
          props.history.push(`/`);
        }}
      >
        JobFinder
      </h2>
    </nav>
  );
};

export default withRouter(NavBar);
