# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

Card.create(answer: "testA", points: 0, category: "testercat1")
Question.create(answer1: "1", answer2: "2", answer3: "3", answer4: "4", correct_answer: "4", card_id: 1)
Card.create(answer: "testB", points: 0, category: "testercat2")
Question.create(answer1: "1", answer2: "2", answer3: "3", answer4: "4", correct_answer: "4", card_id: 2)
Card.create(answer: "testC", points: 0, category: "testercat3")
Question.create(answer1: "1", answer2: "2", answer3: "3", answer4: "4", correct_answer: "4", card_id: 3)
Card.create(answer: "testD", points: 0, category: "testercat4")
Question.create(answer1: "1", answer2: "2", answer3: "3", answer4: "4", correct_answer: "4", card_id: 4)
