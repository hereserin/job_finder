import * as RegionsAPIUtil from "../util/regions_api_util";

export const RECEIVE_REGIONS = "RECEIVE_REGIONS";

export const fetchRegions = () => {
  return dispatch => {
    return RegionsAPIUtil.fetchRegions().then(regions => {
      return dispatch(receiveRegions(regions));
    });
  };
};

const receiveRegions = regions => {
  return {
    type: RECEIVE_REGIONS,
    regions: regions
  };
};
