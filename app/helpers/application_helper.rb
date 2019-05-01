module ApplicationHelper
    #helper customizado para toda a aplicação
    def data_br(data)
        data.strftime("%d/%m/%Y")
    end

    def nome_aplicacao
        "Crypto Wallet App"
    end

    def ambiente_rails
        if Rails.env.development?
            "Desenvolvimento"
        elsif Rails.env.production?
            "Produção"
        else
            "Teste"
        end
    end
end
