import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import ReactDOM from 'react-dom';
import User from "./User";





const Index = () => {
  return (


     <Router>
         <Switch>
           <Route exact path="/User" component={User} />
         </Switch>

    </Router>

  );
};

export default Index;
if (document.getElementById('root')) {
  ReactDOM.render(<User/>, document.getElementById('root'));
}



