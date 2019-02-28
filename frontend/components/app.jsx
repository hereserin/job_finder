import React from "react";
import { Provider } from "react-redux";
import { Route, Switch } from "react-router-dom";
import JobListingsIndex from "./job_listings_index";

const App = () => {
  return (
    <div>
      <h1>This is my app.</h1>
      <JobListingsIndex />
    </div>
  );
};

export default App;
