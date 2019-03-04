import { merge, assign } from "lodash";
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
      const filterId = parseInt(action.filter.numberId);
      let previouslySelected = [];
      if (Object.keys(state).includes(filterType)) {
        previouslySelected = state[filterType];
      }
      return merge({}, state, {
        [filterType]: [...previouslySelected, filterId]
      });
    case TURN_OFF_FILTER:
      const filterTypeToRemoveFrom = action.filter.name;
      const filterIdToRemove = parseInt(action.filter.numberId);
      const previouslySelected2 = state[filterTypeToRemoveFrom];
      const newSelected = previouslySelected2.filter(id => {
        return id !== filterIdToRemove;
      });
      return assign({}, state, {
        [filterTypeToRemoveFrom]: newSelected
      });
    default:
      return state;
  }
};

export default filtersReducer;
