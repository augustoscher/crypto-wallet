module ApplicationHelper
    #helper customizado para toda a aplicação
    def data_br(data)
        I18n.l(data)
    end

    def nome_aplicacao
        "Crypto #{I18n.t('wallet')} App"
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

    # def get_default_locale
    #     I18n.default_locale == :en ? "USA" : "BRA"
    # end
end
