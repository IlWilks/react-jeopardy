import React, { useEffect, useState } from 'react';
import { Card, Grid, Header, } from "semantic-ui-react";
import axios from "axios"
import { Link } from 'react-router-dom';

const GameBoard = (props) => {
  const [cards, setCards] = useState([])


  useEffect(()=> {
    getCards();
  }, [])

  const getCards= async () => {
    try {
      let res = await axios.get("/api/cards");
      console.log(res.data)
      setCards(res.data)
    } catch (err) {
      alert(err);
    }
  };

  

  return (
  <div>
    <Header as="h1">Let's Play Jeopardy!</Header>
    <Header as="h1">Points: {props.score}</Header>
    <Grid columns='four'>
      {cards.map((c)=> (
        <Grid.Row>
          <Grid.Column>
          <Card as={Link} to={`/${c.id}`} onClick={()=> props.setId(c.id)}>
            <Card.Content>
              <Card.Header>{c.answer}</Card.Header>
            </Card.Content>
          </Card>
          </Grid.Column>
        </Grid.Row>
      ))}
    </Grid>
  </div>

  )
}

export default GameBoard;
