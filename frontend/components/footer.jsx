import React from "react";

const Footer = props => {
  return (
    <footer>
      <div>
        <p>github repo & readme:</p>
        <ul className="icons">
          <li>
            <a href="https://github.com/hereserin/job_finder">
              <i className="fab fa-github" />
            </a>
          </li>
        </ul>
      </div>
    </footer>
  );
};

export default Footer;
