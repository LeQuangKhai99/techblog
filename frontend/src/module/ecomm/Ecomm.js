import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import Header from '../../components/ecomm/Header';
import { BrowserRouter, Route, Routes  } from 'react-router-dom';
import Login from '../../components/ecomm/Login';
import AddProduct from '../../components/ecomm/AddProduct';
import Register from '../../components/ecomm/Register';
import UpdateProduct from '../../components/ecomm/UpdateProduct';
import Protected from '../../components/ecomm/Protected';

function Ecomm() {
  return (
    <div>
      <BrowserRouter>
        <Header />
        <Routes>
          <Route path="/login" element={<Login/>}/>
          <Route path="/add" element={<Protected Cmp={AddProduct}/>}/>
          <Route path="/update" element={<Protected Cmp={UpdateProduct}/>}/>
          <Route path="/register" element={<Register/>}/>
        </Routes>
      </BrowserRouter>
    </div>
  )
}

export default Ecomm