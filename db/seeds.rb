# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


comps = Comp.create([{name: 'Tufts Comp', date: 'November 12th, 2016',
                      location: 'Medford HS', contact: 'tuftscomp@gmail.com',
                      website: 'https://sites.tufts.edu/ballroom/'},
                     {name: 'BU Comp', date: 'February 19th, 2017',
                      location: 'Metcalf Hall', contact: 'stinray@bu.edu',
                      website: 'http://buballroom.weebly.com/competition.html'}
                    ])


