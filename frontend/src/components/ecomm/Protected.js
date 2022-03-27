import React, { useEffect } from 'react';
import { useNavigate } from 'react-router-dom';

function Protected(props) {
  const Cmp = props.Cmp;
  const nagative = useNavigate();

  useEffect(() => {
    if(!localStorage.getItem('user-info'))
    {
      nagative('/login');
    }
  });

  return (
    <div><Cmp/></div>
  )
}

export default Protected