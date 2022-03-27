import React, { useEffect } from 'react';
import { useNavigate } from 'react-router-dom';

function Login() {
  const nagative = useNavigate();

  useEffect(() => {
    if(localStorage.getItem('user-info'))
    {
      nagative('/add');
    }
  });

  return (
    <div>Login</div>
  )
}

export default Login