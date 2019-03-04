export const fetchRegions = () => {
  return $.ajax({
    method: "GET",
    url: `/api/regions`
  });
};
