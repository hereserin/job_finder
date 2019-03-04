import React from "react";
import { connect } from "react-redux";
import { fetchSkills } from "./../actions/skills_actions";
import { fetchRegions } from "./../actions/regions_actions";
import { fetchExperienceLevels } from "./../actions/experience_levels_actions";
import FilterMenuCheckboxItem from "./filter_menu_checkbox_item";
import { turnOnFilter } from "./../actions/filters_actions";

class FilterMenu extends React.Component {
  componentDidMount() {
    this.props.fetchRegions();
    this.props.fetchSkills();
    this.props.fetchExperienceLevels();
  }

  composeLevelList() {
    const levels = this.props.experienceLevels;
    const levelsList = Object.keys(levels).map(levelId => {
      const levelName = levels[levelId].experience_level;
      return (
        <FilterMenuCheckboxItem
          key={levelId}
          itemId={levelId}
          itemName={levelName}
          filterCallback={() => {
            this.props.turnOnFilter({
              name: "experienceLevels",
              numberId: levelId
            });
          }}
        />
      );
    });
    return levelsList;
  }

  composeRegionsList() {
    const regions = this.props.regions;
    const regionsList = Object.keys(regions).map(regionId => {
      const regionName = regions[regionId].region;
      return (
        <FilterMenuCheckboxItem
          key={regionId}
          itemId={regionId}
          itemName={regionName}
          filterCallback={() => {
            this.props.turnOnFilter({ name: "regions", numberId: regionId });
          }}
        />
      );
    });
    return regionsList;
  }

  composeSkillsList() {
    const skills = this.props.skills;
    const skillsList = Object.keys(skills).map(skillId => {
      const skillName = skills[skillId].skill;
      return (
        <FilterMenuCheckboxItem
          key={skillId}
          itemId={skillId}
          itemName={skillName}
          filterCallback={() => {
            this.props.turnOnFilter({ name: "skills", numberId: skillId });
          }}
        />
      );
    });
    return skillsList;
  }

  render() {
    return (
      <div>
        <h4>Job Level</h4>
        <ul>{this.composeLevelList()}</ul>
        <h4>Region</h4>
        <ul>{this.composeRegionsList()}</ul>
        <h4>Skill</h4>
        <ul>{this.composeSkillsList()}</ul>
      </div>
    );
  }
}

const mapStateToProps = ({ entities, ui }) => {
  return {
    regions: entities.regions,
    experienceLevels: entities.experienceLevels,
    skills: entities.skills,
    loading: ui.loading.jobListingsLoading
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchRegions: () => {
      return dispatch(fetchRegions());
    },
    fetchSkills: () => {
      return dispatch(fetchSkills());
    },
    fetchExperienceLevels: () => {
      return dispatch(fetchExperienceLevels());
    },
    turnOnFilter: filterInfo => {
      return dispatch(turnOnFilter(filterInfo));
    }
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(FilterMenu);
