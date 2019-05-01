namespace :dev do
  desc "Configura ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Dropping database...") do
        %x(rails db:drop)
      end
      
      show_spinner("Creating database...") { %x(rails db:create) }        

      show_spinner("Migrating database...") { %x(rails db:migrate) }

      show_spinner("Initializing database...") { %x(rails db:seed) }
    else 
      puts "You're not in development"
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
end
