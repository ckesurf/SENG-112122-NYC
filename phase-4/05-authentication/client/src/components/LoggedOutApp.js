import React from "react";
import { Routes, Route, Navigate } from "react-router-dom";

import LoginForm from "./LoginForm";
import SignupForm from "./SignupForm";

function LoggedOutApp() {
  return (
    <div>
      <Routes>
        <Route exact path="/" element={<LoginForm />} />

        <Route exact path="/signup" element={<SignupForm />} />
      </Routes>
    </div>
  );
}

export default LoggedOutApp;
