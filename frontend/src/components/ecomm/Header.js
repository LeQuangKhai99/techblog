import React from 'react'
import { Container, Nav, Navbar, NavDropdown } from 'react-bootstrap';
import {Link} from 'react-router-dom';
import { useNavigate } from 'react-router-dom';

function Header() {
  const info = JSON.parse(localStorage.getItem('user-info'));
  const nagative = useNavigate();

  function logout() {
    localStorage.clear();
    nagative('/login');
  }

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
        {info ? 
        <Nav>
          <NavDropdown title={info && info.user.name}>
            <NavDropdown.Item onClick={logout}>Logout</NavDropdown.Item>
          </NavDropdown>
        </Nav> : ''}
      </Container>
    </Navbar>
  )
}

export default Header