export const fetchSkills = () => {
  return $.ajax({
    method: "GET",
    url: `/api/skills`
  });
};
