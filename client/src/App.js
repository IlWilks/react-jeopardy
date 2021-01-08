import React, { Fragment, useState, } from 'react';
import { Route, Switch, } from 'react-router-dom';
import Questioner from './components/Question';
import NoMatch from './components/NoMatch';
import { Container, } from "semantic-ui-react";
import GameBoard from './components/GameBoard';

const App = () => {

  const [score, setScore] = useState(0)
  const [title, setTitle] = useState('')
  const [id, setId] = useState(0)

  const addPoints = (points) => {
    setScore(score + points)
  }

  const changeTitle = (title) => {
    setTitle(title)
  }

  const changeId = (id) => {
    setId(id)
  }

  const renderGameboard = () => (
    <GameBoard 
      score={score}
      addPoints = {addPoints}
      changeTitle = {changeTitle}
      setId = {changeId}
    />
  )

  const renderQuestion = () => (
    <Questioner
      score={score}
      addPoints = {addPoints}
      title = {title}
      id = {id}
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