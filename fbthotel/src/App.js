import './App.css';
import { Navbar, NavbarBrand } from 'reactstrap';
import Menu from './components/MenuComponent';
import React, { Component } from 'react';




class App extends Component {
  render() {
    return (
      <div className="App">
        <Navbar dark color="primary">
          <div className="container">
            <NavbarBrand href="/">FBT Hotel</NavbarBrand>
          </div>
        </Navbar>
        <Menu />
      </div>
    );
  }
}


export default App;