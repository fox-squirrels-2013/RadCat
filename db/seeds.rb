require 'faker'

5.times do
  Category.create title: Faker::Name.name
end


20.times do
  Post.create name: Faker::Company.bs,
              body: Faker::Lorem.paragraph,
              price: rand(1..10000).to_s.split('').unshift('$').insert(-3, '.').join,
              email: Faker::Internet.free_email,
              category_id: Category.all.sample.id
end