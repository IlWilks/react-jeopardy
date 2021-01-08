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
Card.create(answer: "This country won the first ever World Cup.", points: 400, category: "Sports")
Question.create(answer1: "What is Brazil", answer2: "What is Argentina", answer3: "What is Uraguay", answer4: "What is the USA", correct_answer: "What is Uraguay", points: 400, card_id: 2)
Card.create(answer: "This baseball team can be found is the TV show `The Simpsons`.", points: 600, category: "Sports")
Question.create(answer1: "What is the Springfield Boomers", answer2: "What is the Springfield Isotopes", answer3: "What is the Springfield Homers", answer4: "What is the Springfield Donuts", correct_answer: "What is the Springfield Isotopes", points: 600, card_id: 3)
Card.create(answer: "This football team was originally called the New York Titans", points: 800, category: "Sports")
Question.create(answer1: "What is the New York Jets", answer2: "What is the New York Giants", answer3: "What is the Tennessee Titans", answer4: "What is the Kansas City Chiefs", correct_answer: "What is the New York Jets", points: 800, card_id: 4)

Card.create(answer: "WWII was allegedly started by the assassination of this archduke.", points: 200, category: "History")
Question.create(answer1: "Who is Prince Charles", answer2: "Who is Franz Ferdinand", answer3: "Who is Santa Claus", answer4: "Who is Adolf Hitler", correct_answer: "Who is Franz Ferdinand", points: 200, card_id: 5)
Card.create(answer: "The Bay of Pigs is found in this Carribbean country.", points: 400, category: "History")
Question.create(answer1: "What is Jamaica", answer2: "What is Mexico", answer3: "What is Cuba", answer4: "What is the Dominican Republic", correct_answer: "What is Cuba", points: 400, card_id: 6)
Card.create(answer: "This monkey was the first to enter space in 1949.", points: 600, category: "History")
Question.create(answer1: "Who is Koko", answer2: "Who is Albert", answer3: "Who is Abu", answer4: "Who is your mom", correct_answer: "Who is Albert", points: 600, card_id: 7)
Card.create(answer: "This year the Great Wall of China was built.", points: 800, category: "History")
Question.create(answer1: "What is 2021 BC", answer2: "What is 456 AD", answer3: "What is 221 BC", answer4: "What is today", correct_answer: "What is 221 BC", points: 800, card_id: 8)

Card.create(answer: "This element makes up the largest majority of the universe.", points: 200, category: "Science")
Question.create(answer1: "What is Carbon", answer2: "What is Uranium", answer3: "What is Helium", answer4: "What is the element of surprise", correct_answer: "What is Helium", points: 200, card_id: 9)
Card.create(answer: "This equation was developed by German mathematician Albert Einstein.", points: 400, category: "Science")
Question.create(answer1: "What is E = MC²", answer2: "What is a²+b²=c²", answer3: "What is 42", answer4: "What is C = 2πr", correct_answer: "What is E = MC²", points: 400, card_id: 10)
Card.create(answer: "This bird was studied by geneticist Charles Darwin.", points: 600, category: "Science")
Question.create(answer1: "What is a sparrow", answer2: "What is a parrot", answer3: "What is a finch", answer4: "What is a hummingbird", correct_answer: "What is a finch", points: 600, card_id: 11)
Card.create(answer: "The human body has this many bones.", points: 800, category: "Science")
Question.create(answer1: "What is 147", answer2: "What is 500", answer3: "What is 240", answer4: "What is 206", correct_answer: "What is 206", points: 800, card_id: 12)

Card.create(answer: "This 90's show ran for 5 years and starred rapper Will Smith.", points: 200, category: "Misc")
Question.create(answer1: "What is That 70's Show", answer2: "What is Rocko's Modern Life", answer3: "What is Hannah Montana", answer4: "What is Fresh-Prince of Bel-Air", correct_answer: "What is Fresh-Prince of Bel-Air", points: 200, card_id: 13)
Card.create(answer: "This beer's representative used to have the catchphrase `Stay thirsty my friends.`", points: 400, category: "Misc")
Question.create(answer1: "What is Budweiser", answer2: "What is Dos Equis", answer3: "What is Heineken", answer4: "What is Redd's Apple Ale", correct_answer: "What is Dos Equis", points: 200, card_id: 14)
Card.create(answer: "How many kilobytes are in 1 gigabyte of data?", points: 600, category: "Misc")
Question.create(answer1: "100", answer2: "1,000", answer3: "10,000", answer4: "1,000,000", correct_answer: "1,000,000", points: 600, card_id: 15)
Card.create(answer: "This actress costarred with Sean Connery in the 1999 film, 'Entrapment.'", points: 800, category: "Misc")
Question.create(answer1: "Who is Jennifer Aniston", answer2: "Who is Catherine Zeta-Jones", answer3: "Who is Queen Latifah", answer4: "Who is Andy Samberg", correct_answer: "Who is Catherine Zeta-Jones", points: 800, card_id: 16)
