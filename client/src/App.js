import React, { Fragment, useState, } from 'react';
import { Route, Switch, } from 'react-router-dom';
import Questioner from './components/Question';
import NoMatch from './components/NoMatch';
import { Container, } from "semantic-ui-react";
import GameBoard from './components/GameBoard';

const App = () => {

  const [score, setScore] = useState(100)
  let pathId = 0;

  const addPoints = (points) => {
    setScore(score + points)
  }

  const setId = (id) => {
    pathId = id
  }

  const renderGameboard = () => (
    <GameBoard 
      score={score}
      addPoints = {addPoints}
      setId = {setId}
    />
  )

  const renderQuestion = () => (
    <Questioner
      score={score}
      addPoints = {addPoints}
      id = {pathId}
    />
  )

  return (
  <Fragment>
    <Container>
      <Switch>
        <Route exact path="/" render={() => renderGameboard()}/>
        <Route path="/:id" render={() => renderQuestion()}/>
        <Route component={NoMatch} />
      </Switch>
    </Container>
  </Fragment>
  )
};

export default App;