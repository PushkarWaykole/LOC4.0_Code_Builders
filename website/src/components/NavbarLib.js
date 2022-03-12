import { Switch } from '@mui/material';
import React from 'react'
import {Navbar,Container,Nav,NavDropdown,Form} from 'react-bootstrap'
import "../App.css";
import User from './User';
import { Routes, Route } from "react-router-dom";

function NavbarLib() {
  return (
    <div>
      <div>
        <Navbar collapseOnSelect expand="lg" bg="dark" variant="dark">
  <Container>
  <Navbar.Brand href="/">CodeLib</Navbar.Brand>

  <Navbar.Brand href="/user">User Profile</Navbar.Brand>
  <Navbar.Toggle aria-controls="responsive-navbar-nav" />
  <Navbar.Collapse id="responsive-navbar-nav">
    
    <input type="text" placeholder='Search Books' className='' />
  </Navbar.Collapse>
  </Container>
</Navbar>
</div>
    </div>
  )
}

export default NavbarLib