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
      setCards(res.data)
    } catch (err) {
      alert(err);
    }
  };

  const onClickHandler = (c) => {
    props.changeTitle(c.answer)
    props.setId(c.id);
  }
  

  return (
  <div>
    <div>
      <Header as="h1">Let's Play Jeopardy!</Header>
      <Header as="h1">Points: {props.score}</Header>
    </div>
    <div style={{display: 'flex', justifyContent: 'space-around', alignContent: 'flex-start', flexWrap: 'wrap',}}>
      {cards.map((c)=> (
          <Card as={Link} to={`/${c.id}`} onClick={()=> onClickHandler(c)} style = {{height:"125px", width:"250px"}}>
            <Card.Content>
              <Card.Header>{c.answer}</Card.Header>
              <Card.Description>{c.category}</Card.Description>
            </Card.Content>
          </Card>
      ))}
    </div>
  </div>

  )
}

export default GameBoard;
