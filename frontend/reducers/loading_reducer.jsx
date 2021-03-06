import {
  RECEIVE_JOB_LISTINGS,
  RECEIVE_JOB_LISTING,
  START_LOADING_JOB_LISTINGS,
  START_LOADING_JOB_LISTING
} from "../actions/job_listings_actions";

const initialState = {
  jobListingLoading: false,
  jobListingsLoading: false
};

const loadingReducer = (state = initialState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case START_LOADING_JOB_LISTING:
      return Object.assign({}, state, { jobListingLoading: true });
    case START_LOADING_JOB_LISTINGS:
      return Object.assign({}, state, { jobListingsLoading: true });
    case RECEIVE_JOB_LISTINGS:
    case RECEIVE_JOB_LISTING:
      return initialState;
    default:
      return state;
  }
};

export default loadingReducer;
