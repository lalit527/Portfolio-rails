3.times do |topic|
  Topic.create!(
    title: "Topic #{topic+1}"
  )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog+1}",
    body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
    topic_id: Topic.last.id
  )
end

puts "10 Topics created"

5.times do |skill|
  Skill.create!(
    title: "My Skill #{skill+1}",
    percent_utilized: 15
  )
end

puts "5 Skills created"

8.times do |portfolio|
  Portfol.create!(
    title: "Portfolio title #{portfolio+1}",
    subtitle: "Ruby on Rails",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x150"
  )
end

1.times do |portfolio|
  Portfol.create!(
    title: "Portfolio title #{portfolio+1}",
    subtitle: "Angular",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x150"
  )
end

puts "9 Portfolio created"

3.times do |technology|
  Portfol.last.technologies.create!(
    name: "Technology #{technology+1}"
  )
end

puts "3 Technologies created"
