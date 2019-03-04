export const fetchExperienceLevels = () => {
  return $.ajax({
    method: "GET",
    url: `/api/experience_levels`
  });
};
