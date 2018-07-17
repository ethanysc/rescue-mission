# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Question.create!(title: "Ethan needs to know about gloves?", description: "For some reason Ethan never found out about gloves even though he played baseball?")
Question.create!(title: "How do I murder a unicorn in cold blood?", description: "Find out how to murder a unicorn with a variety of methods.")
Question.create!(title: "How do I get my classmate to stop singing?", description: "Find out how to stop someone from singing all day with a kind way that won't hurt their lil feelings.")

Answer.create!(description: "Go to a glove genius and ask him about the gloves you goofball.", question: Question.find(1))
Answer.create!(description: "You may use flames, bullets and a variety of sharp instruments.", question: Question.find(2))
Answer.create!(description: "Calmly leave a passive-aggressive note on their desk with everyones signatures who hates it.", question: Question.find(3))
