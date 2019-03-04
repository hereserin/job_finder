import { merge } from "lodash";
import {
  TURN_ON_FILTER,
  TURN_OFF_FILTER,
  CLEAR_ALL_FILTERS
} from "./../actions/filters_actions";

const initialState = {};

const filtersReducer = (state = initialState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case TURN_ON_FILTER:
      const filterType = action.filter.name;
      const filterId = action.filter.numberId;
      let previouslySelected = [];
      if (Object.keys(state).includes(filterType)) {
        previouslySelected = state[filterType];
      }
      return merge({}, state, {
        [filterType]: [...previouslySelected, filterId]
      });
    default:
      return state;
  }
};

export default filtersReducer;

// filter looks like this:
// {name: name/catagory, numberId: id}

// state looks like this:
// filters: { regions: [ 3, 5, 11], skills: [ 22, 9, 42]}
