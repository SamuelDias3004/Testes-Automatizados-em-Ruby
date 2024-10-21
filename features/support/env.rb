require "capybara"
require "capybara/cucumber"
require "faker"
require "cpf_cnpj"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end

Faker::Config.locale = 'pt-BR'

def random_brazilian_company_number
  base = "75669105"
  suffix = Faker::Number.number(digits: 4)
  cnpj = "#{base}0001#{suffix}"
end

def random_brazilian_name
  Faker::Name.name
end

def random_brazilian_fantasy_company_name
  Faker::Company.name
end

def generate_uorak_email
  Faker::Internet.email(domain: 'uorak.com')
end

def random_brazilian_fantasy_company_name
  Faker::Company.name
end

def gera_cpf
  CPF.generate
end

def data_atual
  Date.today.strftime("%d/%m/%Y")
end

def data_atual_mas_um_dia
  (Date.today + 1).strftime("%d/%m/%Y")
end