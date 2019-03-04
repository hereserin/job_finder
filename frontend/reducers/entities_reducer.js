import { combineReducers } from "redux";
import jobListingsReducer from "./job_listings_reducer";
import companiesReducer from "./companies_reducer";
import regionsReducer from "./regions_reducer";
import skillsReducer from "./skills_reducer";
import experienceLevelsReducer from "./experience_levels_reducer";

const entitiesReducer = combineReducers({
  jobListings: jobListingsReducer,
  companies: companiesReducer,
  regions: regionsReducer,
  skills: skillsReducer,
  experienceLevels: experienceLevelsReducer
});

export default entitiesReducer;
