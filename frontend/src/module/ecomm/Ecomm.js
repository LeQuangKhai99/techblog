import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import Header from '../../components/ecomm/Header';
import { BrowserRouter, Route, Routes  } from 'react-router-dom';
import Login from '../../components/ecomm/Login';
import AddProduct from '../../components/ecomm/AddProduct';
import Register from '../../components/ecomm/Register';
import UpdateProduct from '../../components/ecomm/UpdateProduct';

function Ecomm() {
  return (
    <div>
      <BrowserRouter>
        <Header />
        <h1>Ecomm Project</h1>
        <Routes>
          <Route path="/login" element={<Login/>}/>
          <Route path="/add" element={<AddProduct/>}/>
          <Route path="/update" element={<UpdateProduct/>}/>
          <Route path="/register" element={<Register/>}/>
        </Routes>
      </BrowserRouter>
    </div>
  )
}

export default Ecomm