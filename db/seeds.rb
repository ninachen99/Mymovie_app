# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a1 = Movie.create(title: "George Clooney", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/george-clooney.jpg", showtime: "23-3-2016")
a2 = Movie.create(title: "Matt Damon", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/matt-damon.jpg", showtime: "22-04-2016")
a3 = Movie.create(title: "Brad Pitt", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/brad-pitt.jpg", showtime: "12-05-2016")

m1 = Theater.create(name: "Ocean Wave", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/oceans-11.jpg", seats: "20")
m2 = Theater.create(name: "Perfect Storm", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/the-perfect-storm.jpg", seats: "36")
m3 = Theater.create(name: "Rain Forest", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/contagion.jpg", seats: "34")

m1.movies << [a1, a2, a3]
m2.movies << [a1, a3]
m3.movies << [a1, a2]

# seed the showtimes

t1 = Theater.create(name: "Space Wave", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/oceans-11.jpg", seats: "20")
Showtime.create(month: "12", date: "12", hour: "13:00", year: "2016", theater_id: t1.id)
Showtime.create(month: "12", date: "9", hour: "12:00", year: "2016", theater_id: t1.id)
Showtime.create(month: "10", date: "8", hour: "15:00", year: "2016", theater_id: t1.id)

t2 = Theater.create(name: "Space Wave", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/contagion.jpg", seats: "30")
Showtime.create(month: "12", date: "12", hour: "13:00", year: "2016", theater_id: t2.id)
Showtime.create(month: "12", date: "9", hour: "12:00", year: "2016", theater_id: t2.id)
Showtime.create(month: "10", date: "8", hour: "15:00", year: "2016", theater_id: t2.id)



# seed the orders
o1 = Order.create(first_name: "Tom", last_name:"Ford", email: "tom@me.com", credit_card:"4456788", expiration:"12-12-2016", age:18, order_quantity:2, theater_id: t1.id)

o2 = Order.create(first_name: "Tom", last_name:"Ford", email: "tom@me.com", credit_card:"4456788", expiration:"12-12-2016", age:28, order_quantity:2, theater_id: t2.id)


