require 'faker'

(1..20).each do |id|
    User.create!(
        id: id, 
        name: Faker::Name.name,
        email: Faker::Internet.email,
        role: Faker::Job.title,
        address: Faker::Address.full_address,
        token:  Faker::Internet.password(min_length: 8, max_length: 8)
    )
end
