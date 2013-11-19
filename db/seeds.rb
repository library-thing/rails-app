# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

books = Book.create([{ title: 'Patterns of Enterprise Application Architecture', author: 'Martin Fowler', available: true },  
    { title: 'Ender\'s Game', author: 'Orson Scott Card', available: false },  
    { title: 'Tesla: Man Out of Time', author: 'Margaret Cheney', available: false },  
    { title: 'Design <for> Hackers', author: 'David Kadavy', available: true },
    { title: 'Beginning Database Design: From Novice to Professional', author: 'Clare Churcher', available: false }, 
    { title: 'How to Win Friends and Influence People', author: 'Dale Carnegie', available: false },
    { title: 'How to Solve It', author: 'G. Polya', available: false },
    { title: 'Domain-Driven Design', author: 'Eric Evans', available: false },
    { title: 'Close to the Machine', author: 'Ellen Ullman ', available: true },
    { title: 'Rails Test Prescriptions: Keeping Your Application Healthy', author: 'Noel Rappin', available: false }
  ])

@ruby_003_students = Student.create([
    {name:'Alex Chiu'},
    {name:'Amanda Himmelstoss'},
    {name:'Anders Ramsay '},
    {name:'Bana Malik'},
    {name:'Charlotte Chang'},
    {name:'Christopher Lee'},
    {name:'Daniel Chang'},
    {name:'David Bella'},
    {name:'Edina Vath'},
    {name:'Emily Xie'},
    {name:'Greg Eng'},
    {name:'Ian Miller'},
    {name:'Iris Lee'},
    {name:'Ivan Brennan'},
    {name:'James Tong'},
    {name:'Joe O\'Conor'},
    {name:'John Richardson'},
    {name:'Josh Scaglione'},
    {name:'Kyle Shike'},
    {name:'Logan Hasson'},
    {name:'Manuel Nehauser'},
    {name:'Margaret Lee'},
    {name:'Matt Campbell'},
    {name:'Michael Polycarpou'},
    {name:'Daniel Chang'},
    {name:'David Bella'},
    {name:'Edina Vath'},
    {name:'Mike Spangler'},
    {name:'Patrick Janson'},
    {name:'Joe O\'Conor'},
    {name:'Raymond Gan'},
    {name:'Rosie Hoyem'},
    {name:'Sam Yang'},
    {name:'Samuel Owens'},
    {name:'Saron Yitbarek'},
    {name:'Scott Luptowski'},
    {name:'Sonja Hall'},
    {name:'Stephanie Oh'},
    {name:'Theo Vora'},
    {name:'David Bella'},
    {name:'Edina Vath'},
    {name:'Tiffany Peon'},
    {name:'Theo Vora'},
    {name:'Trevor McKendrick'},
    {name:'Vinney Cavallo'},
    {name:'Vivian Shangxuan Zhang'}
    ])












