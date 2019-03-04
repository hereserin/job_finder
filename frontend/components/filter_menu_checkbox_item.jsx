import React from "react";
import { turnOnFilter, turnOffFilter } from "./../actions/filters_actions";
import { connect } from "react-redux";

class FilterMenuCheckboxItem extends React.Component {
  constructor(props) {
    super(props);
    this.handleChange = this.handleChange.bind(this);
    this.state = {
      selected: false
    };
  }

  handleChange() {
    const toggled = !this.state.selected;
    this.setState({ selected: toggled }, () => {
      if (this.state.selected === true) {
        this.props.turnOnFilter(this.props.filterObject);
      } else if (this.state.selected === false) {
        this.props.turnOffFilter(this.props.filterObject);
      }
    });
  }

  render() {
    return (
      <div>
        <li>
          <span className="job-search-filter-menu-checkbox-item">
            <label className="job-search-filter-menu-label">
              <input
                className="job-search-filter-menu-checkbox"
                type="checkbox"
                name={this.props.itemName}
                value={this.props.itemName}
                onChange={this.handleChange}
              />
              {this.props.itemName}
            </label>
          </span>
        </li>
      </div>
    );
  }
}

const mapDispatchToProps = dispatch => {
  return {
    turnOnFilter: filterInfo => {
      return dispatch(turnOnFilter(filterInfo));
    },
    turnOffFilter: filterInfo => {
      return dispatch(turnOffFilter(filterInfo));
    }
  };
};

export default connect(
  null,
  mapDispatchToProps
)(FilterMenuCheckboxItem);
