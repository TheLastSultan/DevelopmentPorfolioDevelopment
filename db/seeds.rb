User.create!(
  email: "mozeiny@gmail.com",
  password: "allah199",
  password_confirmation: "allah199",
  name: "Admin User",
  roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
  email: "test2@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Regular User",
)

puts "1 regular user created"


# 1.times do |topic|
#   Topic.create!(
#     title: "Mohamed's development Journey"
#   )
# end

# puts "3 Topics created"


Skill.create!(
  title: "SQL",
  percent_utilized: 77
)

Skill.create!(
  title: "Ruby & Rails",
  percent_utilized: 90
)

Skill.create!(
  title: "Python",
  percent_utilized: 67
)

Skill.create!(
  title: "CSS&HTML",
  percent_utilized: 35
)

Skill.create!(
  title: "Javascript",
  percent_utilized: 40
)

Skill.create!(
  title: "React",
  percent_utilized: 66
)

Skill.create!(
  title: "MATLAB",
  percent_utilized: 85
)

puts "5 skills created"

# 8.times do |portfolio_item|
#   Portfolio.create!(
#     title: "Portfolio title: #{portfolio_item}",
#     subtitle: "Ruby on Rails",
#     body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
#     main_image: "http://placehold.it/600x400",
#     thumb_image: "http://placehold.it/350x200"
#   )
# end

# 1.times do |portfolio_item|
#   Portfolio.create!(
#     title: "Portfolio title: #{portfolio_item}",
#     subtitle: "Angular",
#     body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
#     main_image: "http://placehold.it/600x400",
#     thumb_image: "http://placehold.it/350x200"
#   )
# end

# puts "9 portfolio items created"

# 3.times do |technology|
#   Portfolio.last.technologies.create!(
#     name: "Technology #{technology}"
#   )
# end

puts "3 technologies created"