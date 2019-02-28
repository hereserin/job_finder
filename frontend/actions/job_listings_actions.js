import * as JobListingsAPIUtil from "../util/job_listings_api_util";

export const RECEIVE_JOB_LISTINGS = "RECEIVE_JOB_LISTINGS";
export const RECEIVE_JOB_LISTING = "RECEIVE_JOB_LISTING";
export const START_LOADING_JOB_LISTINGS = "START_LOADING_JOB_LISTINGS";

export const fetchJobListings = () => {
  return dispatch => {
    // dispatch(startLoadingJobListings());
    return JobListingsAPIUtil.fetchJobListings().then(jobListing => {
      return dispatch(receiveJobListings(jobListing));
    });
  };
};

export const fetchJobListing = id => {
  return dispatch => {
    // dispatch(startLoadingJobListings());
    return JobListingsAPIUtil.fetchJobListing(id).then(jobListing => {
      return dispatch(receiveJobListing(jobListing));
    });
  };
};

const receiveJobListings = jobListings => {
  return {
    type: RECEIVE_JOB_LISTINGS,
    jobListings: jobListings
  };
};

const receiveJobListing = jobListing => {
  return {
    type: RECEIVE_JOB_LISTING,
    jobListing: jobListing
  };
};
