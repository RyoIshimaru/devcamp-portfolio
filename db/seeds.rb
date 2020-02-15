10.times do |blog|
    Blog.create!(
      title: "My blog post #{blog}",
      body: "Sed ut perspiciatis unde omnis
      iste natus error sit voluptatem accusantium"
    )
end

5.times do |skill|
    Skill.create!(
      title: "My skill #{skill}",
      percent_utilized: 15
    )
end

9.times do |portfolio|
    Portfolio.create!(
      title: "Portfolio title: #{portfolio}",
      body: "body: Sed ut perspiciatis unde omnis
      iste natus error sit voluptatem accusantium",
      main_image: "https://via.placeholder.com/600x240.png?%20C/O%20https://placeholder.com/",
      thumb_image: "https://via.placeholder.com/300x120.png?%20C/O%20https://placeholder.com/"
    )
end