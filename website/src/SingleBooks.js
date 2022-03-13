import { React, useState, useEffect } from 'react'
import "./App.css"
import TextField from '@mui/material/TextField';
import Autocomplete from '@mui/material/Autocomplete';
import { Button } from 'react-bootstrap'
import Download from './Downlod'
let finalSearch = []
function SingleBooks({ books, handleChange }) {


    const [bookTitle, setBookTitle] = useState({ title: "" })

    function handleTitle(event) {
        const { name, value } = event.target;
        setBookTitle((prevData) => {
            return {
                ...prevData,
                [name]: value
            }
        })
    }
    useEffect(() => {
        checktitle(titles)
        console.log("found")
    }, [bookTitle])

    const searchedTitle = []
    const titles = books.map((currentElem) => {
        const { title } = currentElem
        return title
    })

    console.log(titles);
    function checktitle(titles) {
        const inputTitle = bookTitle.title;
        titles.forEach((elem) => {
            if (elem === inputTitle) {
                console.log("matched")
                finalSearch.push(inputTitle)
            }
        })
    }
    console.log(finalSearch)
    return (

        <div>
            <div >
                <input type="text" value={bookTitle.title} name="title" onChange={handleTitle} placeholder='Search book' className="searchBar" />
            </div>
            



            <div className="main_container">
                {books.map((currElem, index) => {
                    const { id, title, content, image,url } = currElem;
                    if (title == finalSearch) {
                        return (
                            <div className="card">
                                <div className="card_body">
                                    {/* <div className="id">{id}</div> */}
                                    <img src={image} className="image" />
                                    {/* <div className="title">{title}</div> */}
                                    <div className="content">{content}</div>
                                
                                </div>
                            
                                <Download link={url}/>
                            
                            </div>
                            
                        )
                    }

                })}
            </div>


        </div>
    )
}

export default SingleBooks;