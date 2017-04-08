3.times do |topic|
	Topic.create!(
		title: "Title #{topic}"
		)
end

10.times do |blog|
	Blog.create!(
		title: "My Blog Post Title #{blog}",
		body: "My Blog Post Body #{blog} It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
		topic_id: Topic.last.id
	)
end

puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15	
	)
end

puts "5 skill created"

8.times do |p|
	PortFolio.create!(
		title: "Portfolio Title #{p}",
		subtitle: "Ruby on Rails",
		body: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200" 
	)
end

1.times do |p|
	PortFolio.create!(
		title: "Portfolio Title #{p}",
		subtitle: "Angular",
		body: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200" 
	)
end

puts "9 portfolios created"


