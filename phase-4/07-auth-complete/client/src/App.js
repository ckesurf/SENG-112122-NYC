import React, { useState, useEffect } from "react";
import { BrowserRouter as Router } from "react-router-dom";
import LoggedInApp from "./components/LoggedInApp";
import LoggedOutApp from "./components/LoggedOutApp";

import SignupForm from "./components/SignupForm";

function App() {
  // make a state var for whoever the current user is
  const [currentUser, setCurrentUser] = useState(null);
  useEffect(() => {
    fetch("/me", {
      credentials: "include",
    }).then((res) => {
      if (res.ok) {
        res.json().then((jsonData) => setCurrentUser(jsonData));
      } else {
        console.error(res);
      }
    });
  }, []);

  // whenever this site is loaded, check who is logged in, if anyone

  return (
    <div>
      <h1>Marketplace App</h1>
      <Router>
        {/* if logged in, show info about the user */}
        {currentUser ? (
          <LoggedInApp
            currentUser={currentUser}
            setCurrentUser={setCurrentUser}
          />
        ) : (
          /* otherwise, show the login/signup forms */
          <LoggedOutApp setCurrentUser={setCurrentUser} />
        )}
      </Router>
    </div>
  );
}

export default App;
