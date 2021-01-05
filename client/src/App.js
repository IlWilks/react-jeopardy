import React, { Fragment, } from 'react';
import { Route, Switch, } from 'react-router-dom';
import Card from './components/Card';
import NoMatch from './components/NoMatch';
import { Container, } from "semantic-ui-react";
import GameBoard from './components/GameBoard';

const App = () => (
  <Fragment>
    <Container>
      <Switch>
        <Route exact path="/" component={GameBoard} />
        <Route path="/:id" component={Card} />
        <Route component={NoMatch} />
      </Switch>
    </Container>
  </Fragment>
);

export default App;