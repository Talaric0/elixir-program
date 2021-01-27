# frozen_string_literal: true

require 'faker'

@shopping_list_random = []
10.times do
  @shopping_list_random << {
    name: Faker::Food.fruits,
    quantity: (0..30).to_a.sample,
    price: (0..1000).to_a.sample
  }
end

@users_random = []
(1..30).to_a.sample.times do
  @users_random << Faker::Internet.email
end
