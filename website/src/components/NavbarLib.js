import { Switch } from '@mui/material';
import React from 'react'
import {Navbar,Container,Nav,NavDropdown,Form} from 'react-bootstrap'
import "../App.css";
import User from './User';
import { Routes, Route } from "react-router-dom";

function NavbarLib() {
  return (
    <div>
      <div className='navbar'>
        <Navbar collapseOnSelect expand="lg" bg="dark" variant="dark">
  <Container>
  <Navbar.Brand href="/" className="logo">CodeLib</Navbar.Brand>

  <Navbar.Brand href="/dashboard">Dashboard</Navbar.Brand>
  <Navbar.Brand href="/user">User Profile</Navbar.Brand>
  

  
  </Container>
</Navbar>
</div>
    </div>
  )
}

export default NavbarLib