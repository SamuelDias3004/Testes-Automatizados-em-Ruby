Dado('que acesso a página de login 3') do
    visit "https://homol.rhappcolaborador.com.br/"
end

#Teste selecionar_empresa_ADM
Quando('submeto o meu login 2') do
    find('input[ng-reflect-name="email"]').set "testedashboardplanilha@uorak.com"
    find('input[ng-reflect-name="password"]').set "123456789"

    click_button "ENTRAR"
    sleep 10
end
  
Então('sou redirecionado para o Dashboard 2') do
    expect(page).to have_content('Selecione a empresa desejada para prosseguir')
    sleep 2
end

E('seleciono uma empresa 2') do
    find('.ant-input').set "DEMONSTRAÇÃO DESENVOLVIMENTO"
    sleep
    find('fa-icon[title="Selecionar empresa"]').click
end

E('seleciono o perfil 2') do
    find("strong", text: "ADMINISTRADOR MASTER").click
    sleep 3
end

Então('sou redirecionado para o Dashboard da empresa selecionada 2') do
    expect(page).to have_content('Painel')
    sleep 5
end

#Teste selecionar_empresa_ouvidor
Quando('submeto o meu login 3') do
    find('input[ng-reflect-name="email"]').set "testedashboardplanilha@uorak.com"
    find('input[ng-reflect-name="password"]').set "123456789"

    click_button "ENTRAR"
    sleep 10
end
  
Então('sou redirecionado para o Dashboard 3') do
    expect(page).to have_content('Selecione a empresa desejada para prosseguir')
    sleep 2
end

E('seleciono uma empresa 3') do
    find('.ant-input').set "DEMONSTRAÇÃO DESENVOLVIMENTO"
    sleep 2
    find('fa-icon[title="Selecionar empresa"]').click
end

E('seleciono o perfil 3') do
    find("strong", text: "OUVIDOR").click
    sleep 3
end

Então('sou redirecionado para o Dashboard da empresa selecionada 3') do
    expect(page).to have_content('Ouvidoria')
    sleep 5
end

#Empresa_nao_cadastrada
Quando('submeto o meu login 4') do
    find('input[ng-reflect-name="email"]').set "testedashboardplanilha@uorak.com"
    find('input[ng-reflect-name="password"]').set "123456789"

    click_button "ENTRAR"
    sleep 10
end
  
Então('sou redirecionado para o Dashboard 4') do
    expect(page).to have_content('Selecione a empresa desejada para prosseguir')
    sleep 2
end

E('seleciono uma empresa 4') do
    find('.ant-input').set "DEMONSTRAÇÃO 2"
    sleep 2
end

Então('Vejo mensagem de alerta:') do
    expect(page).to have_selector('p', text: 'Não há nenhuma empresa cadastrada')
end

#Cadastro_empresa
Quando('submeto o meu login 5') do
    find('input[ng-reflect-name="email"]').set "testedashboardplanilha@uorak.com"
    find('input[ng-reflect-name="password"]').set "123456789"

    click_button "ENTRAR"
    sleep 6
end
  
Então('sou redirecionado para o Dashboard 5') do
    expect(page).to have_content('Selecione a empresa desejada para prosseguir')
    sleep 2

    click_button "Nova empresa"
    sleep 2
end

E("preencho as informações para criar a empresa") do
    cnpj = random_brazilian_company_number
    company_name = random_brazilian_fantasy_company_name
    email = generate_uorak_email

    find('[formcontrolname="companyRegistrationCode"]').set(cnpj)
    sleep 2

    find('[formcontrolname="companyCorporateName"]').set(company_name)
    sleep 2

    find('[formcontrolname="companyName"]').set(company_name)
    sleep 2 

    click_button "Próximo"
    sleep 2

    find('[formcontrolname="companyPhoneDDD"]').set "99"
    find('[formcontrolname="companyPhoneNumber"]').set "999999999"


    find('[formcontrolname="companyEmail"]').set(email)
    sleep 2

    click_button "Próximo"
    sleep 2

    find('[formcontrolname="addressZipCode"]').set "31340400"
    sleep 4

    find('[formcontrolname="addressNumber"]').set "123"
    sleep 2

    click_button "Próximo"
    sleep 2
end

Então("Cadastro a nova empresa") do
    #click_button "Cadastrar"
    sleep 6
end

#Configuracao_de_empresa
