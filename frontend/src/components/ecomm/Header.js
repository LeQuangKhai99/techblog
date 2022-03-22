import React from 'react'
import { Container, Nav, Navbar } from 'react-bootstrap';
import {Link} from 'react-router-dom';

function Header() {
  return (
    <Navbar bg="light" expand="lg">
      <Container>
        <Navbar.Brand href="#home">React-Bootstrap</Navbar.Brand>
        <Nav className="me-auto navbar_warapper">
          <Link to="/add">Add Product</Link>
          <Link to="/update">Update Product</Link>
          <Link to="/login">Login</Link>
          <Link to="/register">Register</Link>
        </Nav>
      </Container>
    </Navbar>
  )
}

export default Header