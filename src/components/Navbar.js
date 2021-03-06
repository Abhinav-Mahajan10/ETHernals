import React, { Component } from 'react';
import Identicon from 'identicon.js';
import { Link } from 'react-router-dom'

import '../StyleSheet.css'

class Navbar extends Component {

  render() {
    return (
      <nav className="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
        {/* <a
          className="navbar-brand col-sm-3 col-md-2 mr-0"
          href="!#"
        >
          Document Upload Portal
        </a> */}
		<p className="navbar-brand col-sm-3 col-md-2 mr-0">
			Download/Upload portal for files	
		</p>
	
		<ul className="navbar-nav px-3">
          <li><Link to="/" className='MyLink_Navbar'>Back to Homepage</Link>.</li>
		  </ul>
        <ul className="navbar-nav px-3">
          <li className="nav-item text-nowrap d-none d-sm-none d-sm-block">
            <small className="text-secondary">
              <small id="account">{this.props.account}</small>
            </small>
            { this.props.account
              ? <img
                className='ml-2'
                width='30'
                height='30'
                src={`data:image/png;base64,${new Identicon(this.props.account, 30).toString()}`}
              />
              : <span></span>
            }
          </li>
        </ul>
      </nav>
    );
  }
}

export default Navbar;