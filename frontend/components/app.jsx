import React from "react";
import { Provider } from "react-redux";
import { Route, Switch } from "react-router-dom";
import JobListingsIndex from "./job_listings_index";
import JobListingsShow from "./job_listings_show";
import NavBar from "./navbar";
import SearchBar from "./searchbar";
import Footer from "./footer";

const App = () => {
  return (
    <div>
      <NavBar />
      <Switch>
        <Route path="/job_listings/search" component={SearchBar} />
        <Route exact path="/job_listings" component={SearchBar} />
        <Route exact path="/" component={SearchBar} />
      </Switch>
      <Route exact path="/" component={JobListingsIndex} />
      <Route path="/job_listings/search/:query" component={JobListingsIndex} />
      <Route
        exact
        path="/job_listings/:jobListingId"
        component={JobListingsShow}
      />
      <Footer />
    </div>
  );
};

export default App;
