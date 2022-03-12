import React, { useState } from 'react'
import NavbarLib from './components/NavbarLib'

import data from './data.js'
import SingleBooks from './SingleBooks';
function Dashboard(props) {

  return (
    <div>
        <NavbarLib />
        <h2>Welcome {props.user.email}</h2>
        <SingleBooks handleChange={props.handleChange} books={props.books} />
        <h2></h2>

    </div>
  )
}

export default Dashboard