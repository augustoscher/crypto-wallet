namespace :dev do
  desc "Setup development environment"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Dropping database...") do
        %x(rails db:drop)
      end
      show_spinner("Creating database...") { %x(rails db:create) }        
      show_spinner("Migrating database...") { %x(rails db:migrate) }
      show_spinner("Initializing database...") { %x(rails db:seed) }
      %x(rails dev:add_coins)
      %x(rails dev:add_mining_types)
    else 
      puts "You're not in development"
    end
  end

  desc "Adding Coins"
  task add_coins: :environment do
    show_spinner("Adding Coins...") do
      coins = [ 
              { description: "Bitcoin", acronym: "BTC", url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQwvZrzgk9W9LwnL2Le9K42wEnsgM8pd9DhCUz8Wn1EKzFXyKaqA" },
              { description: "Ethereum", acronym: "ETH", url_image: "https://img2.gratispng.com/20180330/wae/kisspng-ethereum-bitcoin-cryptocurrency-logo-tether-bitcoin-5abdfe01b6f4b4.2459439115224007697494.jpg" },            
              { description: "Dash", acronym: "DASH", url_image: "https://cdn1.iconfinder.com/data/icons/cryptocurrency-round-color/128/blockchain_cryptocurrency_currency_Dash_Darkcoin_XCoin_1-512.png" },
              { description: "Iota", acronym: "IOT", url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSttWLPcDiEYfhZ2Txvv1ajzMIL9AI1U-MOmboevKEwHJ1GOVvH" },            
              { description: "ZCash", acronym: "ZEC", url_image: "https://cdn4.iconfinder.com/data/icons/zcash-bitcoin-crytocurrency/128/zcash_crypto_cryptocurrency_coin_coins-03-512.png" }
            ]

      coins.each do |coin| 
          Coin.find_or_create_by!(coin)
      end 
    end
  end

  desc "Adding Mining Types"
  task add_mining_types: :environment do
    show_spinner("Adding Mining Types...") do
      types = [ 
              { description: "Proof of Work", acronym: "PoW" },
              { description: "Proof of Stake", acronym: "PoS" },
              { description: "Proof of Capacity", acronym: "PoC" }
          ]
  
      types.each do |type| 
          MiningType.find_or_create_by!(type)
      end 
    end
  end

  private 
    def show_spinner(msg_init, msg_end=:Finished!)
      spinner = TTY::Spinner.new("[:spinner] #{msg_init}")
      spinner.auto_spin
      #esse comando executa o comando passado pelo bloco do end/{}
      yield
      spinner.success("(#{msg_end})")
    end
  end

