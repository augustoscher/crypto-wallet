# Where the I18n library should search for translation files
# I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb.yml}')]

# Whitelist of avaiable locales for the app
I18n.available_locales = [:en, "pt-BR"]

# Set the default locale for the app, something other than :en
I18n.default_locale = :en