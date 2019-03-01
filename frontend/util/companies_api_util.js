export const fetchCompanies = () => {
  return $.ajax({
    method: "GET",
    url: `/api/companys`
  });
};

export const fetchCompany = id => {
  return $.ajax({
    method: "GET",
    url: `/api/companys/${id}`
  });
};
