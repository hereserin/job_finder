import * as CompaniesAPIUtil from "../util/companies_api_util";

export const RECEIVE_COMPANIES = "RECEIVE_COMPANIES";
export const RECEIVE_COMPANY = "RECEIVE_COMPANY";

export const fetchCompanies = () => {
  return dispatch => {
    // dispatch(startLoadingCompanies());
    return CompaniesAPIUtil.fetchCompanies().then(companies => {
      return dispatch(receiveCompanies(companies));
    });
  };
};

export const fetchCompany = id => {
  return dispatch => {
    // dispatch(startLoadingCompanies());
    return CompaniesAPIUtil.fetchCompany(id).then(company => {
      return dispatch(receiveCompany(company));
    });
  };
};

const receiveCompanies = companies => {
  return {
    type: RECEIVE_COMPANIES,
    companies: companies
  };
};

const receiveCompany = company => {
  return {
    type: RECEIVE_COMPANY,
    company: company
  };
};
