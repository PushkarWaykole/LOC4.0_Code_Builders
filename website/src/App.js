import {React,useState} from 'react'
import ReactDOM from "react-dom";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Dashboard from './Dashboard';
import Login from './Login'
import "./App.css"
import data from './data'
import User from './components/User'
function App() {
  const [user, setUser] = useState({email:"",password:""})
  const [books, setBooks] = useState(data)

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
        <Route exact path='/dashboard' element={<Dashboard handleChange={handleChange} user={user} books={books}/>}></Route>
        <Route exact path='/user' element={<User user={user}/>}></Route>
      </Routes>
    </BrowserRouter>

    </div>
  );
}

export default App;
