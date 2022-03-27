import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';

function Login() {
  const nagative = useNavigate();
  const [password, setPassowrd] = useState("");
  const [email, seetEmail] = useState("");

  useEffect(() => {
    if(localStorage.getItem('user-info'))
    {
      nagative('/add');
    }
  });

  async function login() {
    const item = {email, password};
    console.log(item);
    let result = await fetch("http://techblog.backend.com:9982/api/v1/auth/login", {
      method: "POST",
      body: JSON.stringify(item),
      headers: {
        "Content-Type": "application/json",
        "Accept": 'application/json'
      }
    });

    result = await result.json();
    if(result.user) {
      localStorage.setItem("user-info", JSON.stringify(result));
    nagative("/add");
    }
    nagative("/login");
  }

  return (
    <div className="col-sm-6 offset-sm-3">
      <h1>Login page</h1>
      <input type="email" value={email} onChange={(e) => seetEmail(e.target.value)} className="form-control" placeholder="email" />
      <br />
      <input type="password" value={password} onChange={(e) => setPassowrd(e.target.value)} className="form-control" placeholder="password" />
      <br />
      <button onClick={login} className="btn btn-primary">Login</button>
    </div>
  )
}

export default Login