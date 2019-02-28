export const fetchJobListings = () => {
  return $.ajax({
    method: "GET",
    url: `/api/job_listings`
  });
};

export const fetchJobListing = id => {
  return $.ajax({
    method: "GET",
    url: `/api/job_listings/${id}`
  });
};
