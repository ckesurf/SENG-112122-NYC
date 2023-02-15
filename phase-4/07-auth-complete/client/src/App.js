import React, { useState, useEffect } from "react";
import { BrowserRouter as Router } from "react-router-dom";
import LoggedOutApp from "./components/LoggedOutApp";

import SignupForm from "./components/SignupForm";

function App() {
  // make a state var for whoever the current user is
  const [currentUser, setCurrentUser] = useState(null);
  useEffect(() => {
    fetch("/me", {
      credentials: "include",
    })
      .then((res) => res.json())
      .then((jsonData) => setCurrentUser(jsonData));
  }, []);

  // whenever this site is loaded, check who is logged in, if anyone

  return (
    <div>
      <h1>Marketplace App</h1>
      {/* if logged in, show info about the user */}
      {/* otherwise, show the login/signup forms */}
      {/* <SignupForm /> */}
      <Router>
        <LoggedOutApp setCurrentUser={setCurrentUser} />
      </Router>
    </div>
  );
}

export default App;
