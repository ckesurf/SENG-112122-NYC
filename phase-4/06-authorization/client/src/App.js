import React, { useState, useEffect } from "react";
import { BrowserRouter as Router } from "react-router-dom";
import LoggedInApp from "./components/LoggedInApp";
import LoggedOutApp from "./components/LoggedOutApp";

function App() {
  const [currentUser, setCurrentUser] = useState(null);
  console.log(currentUser);
  useEffect(() => {
    fetch("/me", {
      credentials: "include",
    }).then((res) => {
      if (res.ok) {
        res.json().then((user) => {
          setCurrentUser(user);
        });
      }
    });
  }, []);

  return (
    <div>
      <h1>Marketplace App</h1>

      <Router>
        {currentUser ? (
          <LoggedInApp
            setCurrentUser={setCurrentUser}
            currentUser={currentUser}
          />
        ) : (
          <LoggedOutApp setCurrentUser={setCurrentUser} />
        )}
      </Router>
    </div>
  );
}

export default App;
