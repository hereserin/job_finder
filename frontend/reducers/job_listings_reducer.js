import { merge } from "lodash";
import {
  RECEIVE_JOB_LISTINGS,
  RECEIVE_JOB_LISTING
} from "./../actions/job_listings_actions";

const initialState = {};

const jobListingsReducer = (state = initialState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_JOB_LISTINGS:
      return merge({}, state, action.jobListings);
    case RECEIVE_JOB_LISTING:
      return merge({}, state, action.jobListing);
    default:
      return state;
  }
};

export default jobListingsReducer;
