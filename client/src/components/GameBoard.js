import React, { useEffect, useState } from 'react';
import { Card, Header, } from "semantic-ui-react";
import axios from "axios"
import { Link } from 'react-router-dom';

const GameBoard = () => {
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

  console.log(cards)
  return (
  <div>
    <Header as="h1">Board</Header>
    <div>
    {cards.map((c)=> (
      <Card as={Link} to={`/${c.id}`}>
        <Card.Content>
          <Card.Header>{c.answer}</Card.Header>
        </Card.Content>
      </Card>
    ))}
    </div>
  </div>

  )
}

export default GameBoard;
