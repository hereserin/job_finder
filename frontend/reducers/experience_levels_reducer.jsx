import { merge } from "lodash";
import { RECEIVE_EXPERIENCE_LEVELS } from "./../actions/experience_levels_actions";

const initialState = {};

const experienceLevelsReducer = (state = initialState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_EXPERIENCE_LEVELS:
      return merge({}, state, action.experienceLevels);
    default:
      return state;
  }
};

export default experienceLevelsReducer;
