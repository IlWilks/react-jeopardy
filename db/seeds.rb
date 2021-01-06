# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

Card.create(answer: "This soccer league takes place throughout Europe.", points: 200, category: "Sports")
Question.create(answer1: "What is MLS", answer2: "What is La Liga", answer3: "What is Champions League", answer4: "What is NFL", correct_answer: "What is Champions League", points: 200, card_id: 1)
Card.create(answer: "WWII was allegedly started by the assassination of this archduke.", points: 200, category: "History")
Question.create(answer1: "Who is Prince Charles", answer2: "Who is Franz Ferdinand", answer3: "Who is Santa Claus", answer4: "Who is Adolf Hitler", correct_answer: "Who is Franz Ferdinand", points: 200, card_id: 2)
Card.create(answer: "This element is makes up the largest majority of the universe.", points: 200, category: "Science")
Question.create(answer1: "What is Carbon", answer2: "What is Uranium", answer3: "What is Helium", answer4: "What is the element of surprise", correct_answer: "What is Helium", points: 200, card_id: 3)
Card.create(answer: "This 90's show ran for 5 years and starred rapper Will Smith.", points: 200, category: "Misc")
Question.create(answer1: "What is That 70's Show", answer2: "What is Rokko's Modern Life", answer3: "What is Hannah Montana", answer4: "What is Fresh-Prince of Bel-Air", correct_answer: "What is Fresh-Prince of Bel-Air", points: 200, card_id: 4)
