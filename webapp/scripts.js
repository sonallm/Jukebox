// UNUSED, DIDN'T WORK AS AN EXTERNAL JS FILE SO IDK



document.getElementById('date').innerHTML = new Date().toDateString();
//format CSS stuff in here



// Initialize Firebase
  var config = {
        apiKey: "AIzaSyAL5LD3Zun4mvDmY-emqbQFx1Z1WOOiTdU",
        authDomain: "jukebox-34575.firebaseapp.com",
        databaseURL: "https://jukebox-34575.firebaseio.com",
        projectId: "jukebox-34575",
        storageBucket: "jukebox-34575.appspot.com",
        messagingSenderId: "232996395712"
      };
      firebase.initializeApp(config);

 
var bigOne =  document.getElementById('bigOne');
var dbRef = firebase.database().ref().child('text');
dbRef.on('value', snap => bigOne.innerText = snap.val());
