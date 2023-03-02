import React, { useState, useEffect } from "react";
import { BrowserRouter as Router } from "react-router-dom";
import LoggedOutApp from "./components/LoggedOutApp";

function App() {
  return (
    <div>
      <h1>Marketplace App</h1>

      <Router>
        <LoggedOutApp />
      </Router>
    </div>
  );
}

export default App;
