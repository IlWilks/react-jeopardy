import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { Card, Header, } from "semantic-ui-react";

const About = (props) => {
  const [selections, setSelections] = useState([])
  useEffect(() => {
    getQuestions();
  }, [])

  const getQuestions= async () => {
    try {
      let res = await axios.get(`/api/cards/${props.match.params.id}/questions/1`);
      console.log(res)
      setSelections(res.data)
    } catch (err) {
      alert(err);
    }
  };

  return (
    <div>
    <Header as="h1">Card</Header>
    <div>
      <Card>
        <Card.Content>
          <Card.Header>{selections.answer1}</Card.Header>
        </Card.Content>
      </Card>
      <Card>
        <Card.Content>
          <Card.Header>{selections.answer2}</Card.Header>
        </Card.Content>
      </Card>
      <Card>
        <Card.Content>
          <Card.Header>{selections.answer3}</Card.Header>
        </Card.Content>
      </Card>
      <Card>
        <Card.Content>
          <Card.Header>{selections.answer4}</Card.Header>
        </Card.Content>
      </Card>  
    </div>
  </div>

  )
}

export default About;