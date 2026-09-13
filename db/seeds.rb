# db/seeds.rb

if Rails.env.development?
  Book.create!([
    { title: "Dev Book 1" },
    { title: "Dev Book 2" },
    { title: "Dev Book 3" },
    { title: "Dev Book 4" },
    { title: "Dev Book 5" }
  ])
  puts "Development database seeded with #{Book.count} books!"
elsif Rails.env.test?
  Book.create!([
    { title: "Test Book 1" },
    { title: "Test Book 2" },
    { title: "Test Book 3" },
    { title: "Test Book 4" },
    { title: "Test Book 5" }
  ])
  puts "Test database seeded with #{Book.count} books!"
else
  Book.create!([
    { title: "Dev Book 1" },
    { title: "Dev Book 2" },
    { title: "Dev Book 3" },
    { title: "Dev Book 4" },
    { title: "Dev Book 5" }
  ])
  puts "Production database seeded with #{Book.count} books!"
end