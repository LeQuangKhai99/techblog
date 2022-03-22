import React, { useState } from "react";
import LoginForm from "./components/LoginForm";
function App() {
  const adminUser = {
    email: "abc@gmail.com",
    password: "abc"
  }

  const [user, setUser] = useState({name: "", email: ""});
  const [error, setError] =  useState("");

  const Login = details => {
    if(details.email == adminUser.email && details.password == adminUser.password) {
      setUser({
        name: details.name,
        email: details.name
      });
    }
    else {
      setError("Login fail");
    }
  }

  const Logout = () => {
    setUser({
      name: '',
      email: ''
    });
  }

  return (
    <div className="App">
      {(user.email != "") ? (
        <div className="welcome">
          <h2>Welcome, <span>{user.name}</span></h2>
          <button onClick={Logout}>Logout</button>
        </div>
      ) : (
        <LoginForm Login={Login} error={error} />
      )}
    </div>
  );
}

export default App;