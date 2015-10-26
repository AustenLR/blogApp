# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
Tag.destroy_all

post1 = Post.create(title: "post1")
post2 = Post.create(title: "post2")
post3 = Post.create(title: "post3")

t1 = Tag.create(name: "tag1")
t2 = Tag.create(name: "tag2")
t3 = Tag.create(name: "tag3")

post1.tags << t1
post1.tags << t2
post3.tags << t3
post2.tag_ids = [1,3]
post1.tags << t3