import { merge } from "lodash";
import { RECEIVE_SKILLS } from "./../actions/skills_actions";

const initialState = {};

const skillsReducer = (state = initialState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SKILLS:
      return merge({}, state, action.skills);
    default:
      return state;
  }
};

export default skillsReducer;
