# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
image_list = [
  ["sunset picture", "http://google.com"],
  ["sunrise picture", "http://bing.com"],
  ["city picture", "http://twitter.com"]
]


image_list.each do |title, url|
  Image.create(title: title, image_url: url)
end
