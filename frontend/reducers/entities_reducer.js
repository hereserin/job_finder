import { combineReducers } from "redux";
import jobListingsReducer from "./job_listings_reducer";

const entitiesReducer = combineReducers({
  jobListings: jobListingsReducer
});

export default entitiesReducer;
