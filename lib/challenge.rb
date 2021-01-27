# frozen_string_literal: true

require_relative './seed.rb'

def total_per_person(shopping_list, users)
  grand_total = 0

  raise 'Shopping list and/or users cannot be blank' if shopping_list.empty? || users.empty?

  # Calcular a soma dos valores, ou seja, multiplicar o preco de cada item
  # por sua quantidade e somar todos os itens
  shopping_list.each do |item|
    grand_total += (item[:quantity]) * (item[:price])
  end
  puts "Grand total is #{grand_total}"

  # Dividir o valor de forma igual entre a quantidade de e-mails
  per_person = grand_total / users.length
  puts "Per person is #{per_person}"

  remainder = grand_total % users.length
  puts "Remainder is #{remainder} cents for #{users.length} people" unless remainder.zero?

  # Retornar um mapa/dicionario onde a chave sera o e-mail e o valor sera
  # quanto ele deve pagar nessa conta
  assemble_final_hash(remainder, users, per_person)
end

def assemble_final_hash(remainder, users, per_person)
  final_hash = {}

  if remainder.zero?
    users.each do |user|
      final_hash[user] = per_person
    end
  else
    users.each do |user|
      if remainder.positive?
        final_hash[user] = per_person + 1
        remainder -= 1
      else
        final_hash[user] = per_person
      end
    end
  end

  final_hash
end
