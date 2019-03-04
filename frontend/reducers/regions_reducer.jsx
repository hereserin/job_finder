import { merge } from "lodash";
import { RECEIVE_REGIONS } from "./../actions/regions_actions";

const initialState = {};

const regionsReducer = (state = initialState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_REGIONS:
      return merge({}, state, action.regions);
    default:
      return state;
  }
};

export default regionsReducer;
