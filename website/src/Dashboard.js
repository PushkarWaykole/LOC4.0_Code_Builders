import React, { useState } from 'react'
import NavbarLib from './components/NavbarLib'

import data from './data.js'
import SingleBooks from './SingleBooks';
function Dashboard(props) {

  return (
    <div>
        <NavbarLib />
        
        <SingleBooks handleChange={props.handleChange} books={props.books} />
        <h2></h2>

    </div>
  )
}

export default Dashboard