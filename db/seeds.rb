# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# arquivo de inicialização de banco de dados.

puts "Inicializando tabela de moedas"
Coin.create!(
  [ 
    {
      description: "Bitcoin",
      acronym: "BTC",
      url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQwvZrzgk9W9LwnL2Le9K42wEnsgM8pd9DhCUz8Wn1EKzFXyKaqA"
    },
    {
      description: "Ethereum",
      acronym: "ETH",
      url_image: "https://img2.gratispng.com/20180330/wae/kisspng-ethereum-bitcoin-cryptocurrency-logo-tether-bitcoin-5abdfe01b6f4b4.2459439115224007697494.jpg"
    },
    {
      description: "Dash",
      acronym: "DASH",
      url_image: "https://cdn1.iconfinder.com/data/icons/cryptocurrency-round-color/128/blockchain_cryptocurrency_currency_Dash_Darkcoin_XCoin_1-512.png"
    }
  ]
)
puts "Moedas inicializadas com sucesso"