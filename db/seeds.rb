# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

member = Member.create([{name:'Juan Areiza', year:'2015'},{name:'Esteban Salgado', year:'2015'},{name:'Marcos Giraldo', year:'2015'},{name:'Julian Agudelo', year:'2015'}])
Class.create(year:'2015', members: member.first)