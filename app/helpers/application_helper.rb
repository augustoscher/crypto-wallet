module ApplicationHelper
    #helper customizado para toda a aplicação
    def data_br(data)
        data.strftime("%d/%m/%Y")
    end

    def nome_aplicacao
        "Crypto Wallet App"
    end
end
