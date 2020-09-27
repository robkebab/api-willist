# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CourseTag.destroy_all
LinkTag.destroy_all
Tag.destroy_all
Link.destroy_all
Course.destroy_all
User.destroy_all

User.create(name: "Robert", password: "WTAwillist098123", curator: true)
Course.create(title: "Javascript 30", blurb: "JS essentials in 30 days", user: User.first)
Link.create(text: "Drum Kit", url: "https://www.youtube.com/watch?v=VuN8qwZoego&list=PLu8EoSxDXHP6CGK4YVJhL_VWetA865GOH", course: Course.first)
Tag.create(name: "javascript")
CourseTag.create(course: Course.first, tag: Tag.first)
LinkTag.create(link: Link.first, tag: Tag.first)