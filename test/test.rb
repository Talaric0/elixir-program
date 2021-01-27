# frozen_string_literal: true

require_relative '../lib/challenge.rb'
require_relative '../lib/seed.rb'

# README example
# total_per_person([
#   {
#     name: "banana",
#     quantity: 2,
#     price: 120
#   },
#   {
#     name: "apple",
#     quantity: 5,
#     price: 100
#   },
#   {
#     name: "nutella",
#     quantity: 1,
#     price: 10000000000000000000000000000
#   },
# ],
# [
#   "johny_b_good@gmail.com",
#   "john_doe@gmail.com",
#   "joao_estrela@gmail.com",
#   "joao_zinho@gmail.com"
#   ])

# Feel free to call the function passing your own arguments in here
total_per_person(@shopping_list_random, @users_random)
