# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create([{ title: 'Films' }, { title: 'Music' }])

Test.create([
                { title: 'Best Films', level: 4, category_id: 1 },
                { title: 'Rock Bands', level: 3, category_id: 2 },
                { title: 'Pop Music', level: 1, category_id: 2 }
            ])

Question.create([{ body: 'Oscar winner 2017?', test_id: 1 },
                 { body: 'Where was Beatles founded?', test_id: 2 },
                 { body: 'Who was Prince?', test_id: 2 }])
Answer.create([
                  { body: 'Shape of Waters', question_id: 1, correct: true },
                  { body: 'The Bridge', question_id: 1 },
                  { body: 'Liverpool', question_id: 2, correct: true },
                  { body: 'Manchester', question_id: 2 },
                  { body: 'Prince of Egypt', question_id: 3 },
                  { body: 'American singer-songwriter', question_id: 3, correct: true }
              ])
User.create(name: 'Kinoman', email: 'kinoman@gmail.com')
