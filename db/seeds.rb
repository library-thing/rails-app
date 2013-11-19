# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

books = Book.create([{ title: 'Patterns of Enterprise Application Architecture', author: 'Martin Fowler' },  
    { title: 'Ender\'s Game', author: 'Orson Scott Card' },  
    { title: 'Tesla: Man Out of Time', author: 'Margaret Cheney' },  
    { title: 'Design <for> Hackers', author: 'David Kadavy' },
    { title: 'Beginning Database Design: From Novice to Professional', author: 'Clare Churcher' }, 
    { title: 'How to Win Friends and Influence People', author: 'Dale Carnegie' },
    { title: 'How to Solve It', author: 'G. Polya' },
    { title: 'Domain-Driven Design', author: 'Eric Evans' },
    { title: 'Close to the Machine', author: 'Ellen Ullman ' },
    { title: 'Rails Test Prescriptions: Keeping Your Application Healthy', author: 'Noel Rappin' }
  ])