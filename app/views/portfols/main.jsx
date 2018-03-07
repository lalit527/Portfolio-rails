import React from 'react';
import ReactDOM from 'react-dom';
import Index from './components/index1';
import Follow from './components/follow';
//import { Router, Route, Link } from 'react-router';
import { BrowserRouter as Router, Route, Link, Switch } from 'react-router-dom';

class App extends React.Component {
  render() {
    return (
      <div>
      </div>
    );
  }
}

let documentReady = () => {
  let reactNode = document.getElementById('react');
  if(reactNode){
    ReactDOM.render(
      <Router>
        <App>

          <Route path="/" component={Index} />
        </App>
      </Router>
      , reactNode
    );
  }
};

$(documentReady);



//var Main = React.createClass({ render: function() { return ( <Greet /> ) } });

// let documentReady = () => {
//   React.render(
//     <Main />,
//     document.getElementById('react')
//   );
// };


// let documentReady = createReactClass({
//   render: function() {
//     return (
//       <h1>Hello React</h1>,
//       document.getElementById('react')
//     )
//   }
// });
