import { merge } from "lodash";
import {
  RECEIVE_COMPANY,
  RECEIVE_COMPANIES
} from "./../actions/companies_actions";
import {
  RECEIVE_JOB_LISTINGS,
  RECEIVE_JOB_LISTING
} from "./../actions/job_listings_actions";

const initialState = {};

const companiesReducer = (state = initialState, action) => {
  Object.freeze(state);
  switch (action.type) {
    // case RECEIVE_COMPANIES:
    //   return merge({}, state, action.companies);
    // case RECEIVE_COMPANY:
    //   return merge({}, state, action.company);
    case RECEIVE_JOB_LISTING:
      return merge({}, state, action.company);
    default:
      return state;
  }
};

export default companiesReducer;
