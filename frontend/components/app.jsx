import React from "react";
import { Provider } from "react-redux";
import { Route, Switch } from "react-router-dom";
import JobListingsIndex from "./job_listings_index";
import JobListingsShow from "./job_listings_show";

const App = () => {
  return (
    <div>
      <h1>This is my app.</h1>
      <Route exact path="/job_listings" component={JobListingsIndex} />
      <Route
        exact
        path="/job_listings/:jobListingId"
        component={JobListingsShow}
      />
    </div>
  );
};

export default App;
