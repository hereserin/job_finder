import React from "react";
import { turnOnFilter } from "./../actions/filters_actions";

const FilterMenuCheckboxItem = props => {
  return (
    <div>
      <li>
        <span className="job-search-filter-menu-checkbox-item">
          <label className="job-search-filter-menu-label">
            <input
              className="job-search-filter-menu-checkbox"
              type="checkbox"
              name={props.itemName}
              value={props.itemName}
              onChange={props.filterCallback}
            />
            {props.itemName}
          </label>
        </span>
      </li>
    </div>
  );
};

export default FilterMenuCheckboxItem;
