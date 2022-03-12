import React from 'react'
import NavbarLib from './components/NavbarLib'

function Dashboard(props) {
  return (
    <div>
        <NavbarLib />
        <h2>Welcome {props.user.email}</h2>
    </div>
  )
}

export default Dashboard