import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { Card, Header, } from "semantic-ui-react";

const Questioner = (props) => {
  const [selections, setSelections] = useState([])

  useEffect(() => {
    getQuestions();
  }, [])

  const getQuestions= async () => {
    try {
      let res = await axios.get(`/api/cards/${props.id}/questions/1`);
      setSelections(res.data)
    } catch (err) {
      alert(err);
    }
  };

  const triggerGuess = (val) => {
    if (val === selections.correct_answer) {

      alert(`You right. Awarding ${selections.points} points.`)
      props.addPoints(selections.points)
      //give points here, return to game board
      //remove question if poss
    }
    else {
      alert(`Sorry, wrong. the right question was ${selections.correct_answer}`)
    }
  }

  return (
    <div>
    <Header as="h1">{props.title}</Header>
    <div>
      <Card as={Link} to={`/`} onClick={() => triggerGuess(selections.answer1)}>
        <Card.Content>
          <Card.Header>{selections.answer1}</Card.Header>
        </Card.Content>
      </Card>
      <Card as={Link} to={`/`} onClick={() => triggerGuess(selections.answer2)}>
        <Card.Content>
          <Card.Header>{selections.answer2}</Card.Header>
        </Card.Content>
      </Card>
      <Card as={Link} to={`/`} onClick={() => triggerGuess(selections.answer3)}>
        <Card.Content>
          <Card.Header>{selections.answer3}</Card.Header>
        </Card.Content>
      </Card>
      <Card as={Link} to={`/`} onClick={() => triggerGuess(selections.answer4)}>
        <Card.Content>
          <Card.Header>{selections.answer4}</Card.Header>
        </Card.Content>
      </Card>  
    </div>
  </div>
  )
}

export default Questioner;