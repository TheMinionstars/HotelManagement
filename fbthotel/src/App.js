import './App.css';
import { Navbar, NavbarBrand } from 'reactstrap';
import Menu from './components/MenuComponent';
import React, { Component } from 'react';
import { DISHES } from './shared/dishes';
import Main from './components/MainComponent';




class App extends Component {
  constructor(props){
    super(props);
    this.state={
      dishes: DISHES
    };
  }
  render() {
    return (
      <div className="App">
        <Main />
        <Navbar dark color="primary">
          <div className="container">
            <NavbarBrand href="/">FBT Hotel</NavbarBrand>
          </div>
        </Navbar>
        <Menu dishes={this.state.dishes}/>
      </div>
    );
  }
}


export default App;
