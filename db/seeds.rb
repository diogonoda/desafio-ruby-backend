# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Populating Trade Types with default data'
TradeType.create([
  { mode: 1, name: 'Débito', nature: 0, operator: '+' },
  { mode: 2, name: 'Boleto', nature: 1, operator: '-' },
  { mode: 3, name: 'Financiamento', nature: 1, operator: '-' },
  { mode: 4, name: 'Crédito', nature: 0, operator: '+' },
  { mode: 5, name: 'Recebimento Empréstimo', nature: 0, operator: '+' },
  { mode: 6, name: 'Vendas', nature: 0, operator: '+' },
  { mode: 7, name: 'Recebimento TED', nature: 0, operator: '+' },
  { mode: 8, name: 'Recebimento DOC', nature: 0, operator: '+' },
  { mode: 9, name: 'Aluguel', nature: 1, operator: '-' }
])
