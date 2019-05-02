# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# arquivo de inicialização de banco de dados.
# foi movido esse comportamento para tasks
=begin
spinner = TTY::Spinner.new("[:spinner] Inicializando moedas")
spinner.auto_spin
coins = [ 
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
        },
        {
          description: "Iota",
          acronym: "IOT",
          url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSttWLPcDiEYfhZ2Txvv1ajzMIL9AI1U-MOmboevKEwHJ1GOVvH"
        },
        {
          description: "ZCash",
          acronym: "ZEC",
          url_image: "https://cdn4.iconfinder.com/data/icons/zcash-bitcoin-crytocurrency/128/zcash_crypto_cryptocurrency_coin_coins-03-512.png"
        }
    ]

coins.each do |coin| 
    Coin.find_or_create_by!(coin)
end 
spinner.success("(Moedas inicializadas com sucesso)")

spinner = TTY::Spinner.new("[:spinner] Inicializando tipos de mineração")
spinner.auto_spin
types = [ 
        {
          description: "Proof of Work",
          acronym: "PoW",
        },
        {
          description: "Proof of Stake",
          acronym: "PoS",
        },
        {
          description: "Proof of Capacity",
          acronym: "PoC",
        }
    ]

types.each do |type| 
    MiningType.find_or_create_by!(type)
end 
spinner.success("(Tipos de mineração inicializadas com sucesso)")
=end

