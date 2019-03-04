import * as ExperienceLevelsAPIUtil from "../util/experience_levels_api_util";

export const RECEIVE_EXPERIENCE_LEVELS = "RECEIVE_EXPERIENCE_LEVELS";

export const fetchExperienceLevels = () => {
  return dispatch => {
    return ExperienceLevelsAPIUtil.fetchExperienceLevels().then(
      experienceLevels => {
        return dispatch(receiveExperienceLevels(experienceLevels));
      }
    );
  };
};

const receiveExperienceLevels = experienceLevels => {
  return {
    type: RECEIVE_EXPERIENCE_LEVELS,
    experienceLevels: experienceLevels
  };
};
