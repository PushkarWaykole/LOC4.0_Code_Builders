import './App.css';
import { saveAs } from "file-saver";
import { useState } from 'react';
import {Button} from 'react-bootstrap';

export default function Download(props) {

  const [input, setInput] = useState(props.link);

  const saveFile = () => {
    saveAs(input);
  };  


  return (
    <div className="Dbutton">
      <Button onClick={saveFile}>Download File</Button>
    </div>
  );
}
