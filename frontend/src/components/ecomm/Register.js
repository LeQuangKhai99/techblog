import React, { useEffect, useState } from 'react';
import {useNavigate} from 'react-router-dom';

function Register() {
  const [name, setName] = useState("");
  const [password, setPassowrd] = useState("");
  const [email, setEmail] = useState("");
  const [avatar, setAvatar] = useState("");
  const nagative = useNavigate();

  useEffect(() => {
    if(localStorage.getItem('user-info'))
    {
      nagative('/add');
    }
  });
  
  async function signUp() {
    let item = {name, password, email, avatar};
    console.log(item);
    const formdata = new FormData();
    formdata.append('name', name);
    formdata.append('avatar', avatar);
    formdata.append('email', email);
    formdata.append('password', password);

    let result = await fetch("http://techblog.backend.com:9982/api/v1/auth/register", {
      method: "POST",
      body: formdata
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
      <h1>Register page</h1>
      <input type="text" onChange={(e) => setName(e.target.value)} className="form-control" placeholder="name" />
      <br />
      <input type="email" value={email} onChange={(e) => setEmail(e.target.value)} className="form-control" placeholder="email" />
      <br />
      <input type="file" onChange={(e) => setAvatar(e.target.files[0])} className="form-control" placeholder="email" />
      <br />
      <input type="password" onChange={(e) => setPassowrd(e.target.value)} className="form-control" placeholder="password" />
      <br />
      <button onClick={signUp} className="btn btn-primary">Sign up</button>
    </div>
  )
}

export default Register;