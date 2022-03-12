import { initializeApp } from 'firebase/app';
import {getAuth} from 'firebase/auth';

// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
    apiKey: "AIzaSyAp5g466rekCsPxM-aSwbdl0QwdVp0G4O0",
    authDomain: "choicelib-c3a31.firebaseapp.com",
    projectId: "choicelib-c3a31",
    storageBucket: "choicelib-c3a31.appspot.com",
    messagingSenderId: "228011870880",
    appId: "1:228011870880:web:9f1e88ddca20e03dddd7c5",
    measurementId: "G-LCK40LQ708"
  };

const app = initializeApp(firebaseConfig);

const authentication=getAuth(app);