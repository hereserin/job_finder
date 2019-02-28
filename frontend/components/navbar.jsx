import React from "react";
import { Link, withRouter } from "react-router-dom";

const NavBar = props => {
  return (
    <nav>
      <h2 className=".job-finder-title">JobFinder</h2>
    </nav>
  );
};

export default withRouter(NavBar);
