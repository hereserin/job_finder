export const fetchJobListings = () => {
  return $.ajax({
    method: "GET",
    url: `/api/job_listings`
  });
};
