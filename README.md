
# Programa de Formação em Elixir | Teste Técnico



### Input
The function total_per_person takes two arguments, on this order:

1 - shopping_list = Array of Hashes with the following keys:
      :name -> string,
      :quantity -> integer,
      :price -> integer (cents)

        fe: [
          {
            name: "banana",
            quantity: 2,
            price: 120
          },
          {
            name: "apple",
            quantity: 5,
            price: 100
          },
          {
            name: "nutella",
            quantity: 1,
            price: 10000000000000000000000000000000
          },
        ]

2 - users = Array of Strings
      fe: [
        "johny_b_good@gmail.com",
        "john_doe@gmail.com",
        "joao_estrela@gmail.com",
        "joao_zinho@gmail.com"
      ]

### Output
  The function PRINTS on the screen:
    - The grand total of the shopping list
    - The total per person
    - The remainder of the division if there is any

        "Grand total is 10000000000000000000000000000740"
        "Per person is 2500000000000000000000000000185"

  The function RETURNS a Hash with keys as passed on the users input, and the respective ammount to be paid by each as values.

    {
      "johny_b_good@gmail.com"=>2500000000000000000000000000185,
      "john_doe@gmail.com"=>2500000000000000000000000000185,
      "joao_estrela@gmail.com"=>2500000000000000000000000000185,
      "joao_zinho@gmail.com"=>2500000000000000000000000000185
    }      


### Testing
  I've performed random tests by using the Faker gem to generate a random number of users, and shopping items.

  Feel free to check the seed file for more info, and if you like to see it in action, don't forget to:

  ```bash
  bundle install
  ruby test/test.rb
  ```

  You can call the funcion with your own inputs on the test.rb file, and run it once you're done.
