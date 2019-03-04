import * as SkillsAPIUtil from "../util/skills_api_util";

export const RECEIVE_SKILLS = "RECEIVE_SKILLS";

export const fetchSkills = () => {
  return dispatch => {
    return SkillsAPIUtil.fetchSkills().then(skills => {
      return dispatch(receiveSkills(skills));
    });
  };
};

const receiveSkills = skills => {
  return {
    type: RECEIVE_SKILLS,
    skills: skills
  };
};
