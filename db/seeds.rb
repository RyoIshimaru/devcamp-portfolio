3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
    )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My blog post #{blog}",
    body: "Sed ut perspiciatis unde omnis
    iste natus error sit voluptatem accusantium",
    topic_id: Topic.last.id
  )
end

puts "10 blogs created"

5.times do |skill|
  Skill.create!(
    title: "My skill #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio}",
    subtitle: "Ruby on Rails",
    body: "body: Sed ut perspiciatis unde omnis
    iste natus error sit voluptatem accusantium",
    main_image: "https://via.placeholder.com/600x240.png?%20C/O%20https://placeholder.com/",
    thumb_image: "https://via.placeholder.com/300x120.png?%20C/O%20https://placeholder.com/"
  )
end

1.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio}",
    subtitle: "Angular",
    body: "body: Sed ut perspiciatis unde omnis
    iste natus error sit voluptatem accusantium",
    main_image: "https://via.placeholder.com/600x240.png?%20C/O%20https://placeholder.com/",
    thumb_image: "https://via.placeholder.com/300x120.png?%20C/O%20https://placeholder.com/"
  )
end

puts "9 portfolios created."