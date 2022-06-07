# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.new
user1.email = 'test1@test.com'
user1.password = 'senha123'
user1.save!

user2 = User.new
user2.email = 'test2@test.com'
user2.password = 'senha123'
user2.save!

user3 = User.new
user3.email = 'test3@test.com'
user3.password = 'senha123'
user3.save!

User.all.each do |user|
  c = Crypto.new
  c.user = user
  c.crypto = 'bitcoin'
  c.buying_price = '30000'
  c.quantity = '1'
  c.notes = 'Teste'
  c.save

  d = Crypto.new
  d.user = user
  d.crypto = 'ethereum'
  d.buying_price = '30000'
  d.quantity = '1'
  d.notes = 'Teste'
  d.save

  e = Crypto.new
  e.user = user
  e.crypto = 'litecoin'
  e.buying_price = '20000'
  e.quantity = '10'
  e.notes = 'Teste'
  e.save
end