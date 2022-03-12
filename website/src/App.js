import {React,useState} from 'react'
import ReactDOM from "react-dom";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Dashboard from './Dashboard';
import Login from './Login'
import "./App.css"
function App() {
  const [user, setUser] = useState({email:"",password:""})

  function handleChange(event){
    const {name,value}=event.target;
    setUser((prevData)=>{
      return{
        ...prevData,
        [name]:value
      }
    })
  }
 return (
    <div>
      <BrowserRouter>
      <Routes>
        <Route exact path='/' element={<Login handleChange={handleChange} setUser={setUser} user={user}/>}></Route>
        <Route exact path='/dashboard' element={<Dashboard user={user} setUser={setUser}/>}></Route>
      </Routes>
    </BrowserRouter>

    </div>
  );
}

export default App;
