import { combineReducers } from "redux";
import jobListingsReducer from "./job_listings_reducer";
import companiesReducer from "./companies_reducer";

const entitiesReducer = combineReducers({
  jobListings: jobListingsReducer,
  companies: companiesReducer
});

export default entitiesReducer;
