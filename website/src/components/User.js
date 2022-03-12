import React from 'react';
import { Navbar } from 'react-bootstrap';
import NavbarLib from './NavbarLib';
import Avatar from '@mui/material/Avatar';
import Badge from '@mui/material/Badge';
// import MailIcon from '@mui/icons-material/Mail';
function User() {
  return (
      <div>
      <NavbarLib />

    <div className="user_component">
    <Avatar className='profile_logo'>H</Avatar>
    {/* <Badge badgeContent={4} color="primary">
        <MailIcon color="action" />
    </Badge> */}
    </div>
    </div>
  )
}

export default User