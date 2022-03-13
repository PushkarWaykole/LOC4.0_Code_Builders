import {React,useEffect,useState} from 'react'
import "./App.css";
import {Link} from 'react-router-dom'
import { Form,Button } from 'react-bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css';

function Login({handleChange,user,setUser}) {
    useEffect(() => {
        //Runs only on the first render
        console.log(user)
      }, [user]);
  return (

    
    <div className='signIn'>
        
        <img src="https://github.com/PushkarWaykole/Sample-websites-created-by-me/blob/main/logo.jpeg?raw=true" alt="logo"/>
        
        
        <div className='form_components'>
        <Form>
  <Form.Group className="mb-3" controlId="formBasicEmail">
    <Form.Control type="email" name="email" value={user.email} onChange={handleChange}      placeholder="Enter email" />
    
  </Form.Group>

  <Form.Group className="mb-3" controlId="formBasicPassword">
  
    <Form.Control type="password" name="password" value={user.password} onChange={handleChange} placeholder="Password" />
  </Form.Group>
  
  <Button variant="primary" Link to='/dashboard' type="submit">
  <Link to='/dashboard' style={{color:"white",textDecoration:"none"}}>Submit</Link>
  </Button>
</Form>
</div>
    </div>
  )
}

export default Login