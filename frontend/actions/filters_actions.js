export const TURN_ON_FILTER = "TURN_ON_FILTER";
export const TURN_OFF_FILTER = "TURN_OFF_FILTER";
export const CLEAR_ALL_FILTERS = "CLEAR_ALL_FILTERS";

export const turnOnFilter = filter => ({
  type: TURN_ON_FILTER,
  filter: filter
});

export const turnOffFilter = filter => ({
  type: TURN_OFF_FILTER,
  filter: filter
});

export const clearAllFilters = () => ({
  type: CLEAR_ALL_FILTERS
});
