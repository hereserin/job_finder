import * as JobListingsAPIUtil from "../util/job_listings_api_util";

export const RECEIVE_JOB_LISTINGS = "RECEIVE_JOB_LISTINGS";
export const START_LOADING_JOB_LISTINGS = "START_LOADING_JOB_LISTINGS";

export const fetchJobListings = () => {
  return dispatch => {
    // dispatch(startLoadingJobListings());
    return JobListingsAPIUtil.fetchJobListings().then(payload => {
      return dispatch(receiveJobListings(payload));
    });
  };
};

const receiveJobListings = jobListings => {
  return {
    type: RECEIVE_JOB_LISTINGS,
    jobListings: jobListings
  };
};
