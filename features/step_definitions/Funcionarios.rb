#Novo_colaborador

Quando('submeto o meu login 6') do
    find('input[ng-reflect-name="email"]').set "testedashboardplanilha@uorak.com"
    find('input[ng-reflect-name="password"]').set "123456789"

    click_button "ENTRAR"
    sleep 6
end

Então('sou redirecionado para o Dashboard 6') do
    expect(page).to have_content('Selecione a empresa desejada para prosseguir')
    sleep 2
end

E('seleciono uma empresa 6') do
    find('.ant-input').set "DEMONSTRAÇÃO DESENVOLVIMENTO"
    sleep 2
    find('fa-icon[title="Selecionar empresa"]').click
end

E('seleciono o perfil 4') do
    find("strong", text: "ADMINISTRADOR MASTER").click
    sleep 3
end

Então('sou redirecionado para o Dashboard da empresa selecionada 6') do
    expect(page).to have_content('Painel')
    sleep 5
end

E('clico em novo colaborador') do
    all(:xpath, "//div[contains(@class, 'ant-collapse-header')]//p").each_with_index do |element, index|
        puts "Elemento #{index}: #{element.text}"
    end
    find(:xpath, "//div[contains(@class, 'ant-collapse-header')]//p[text()='Colaborador']").click
    sleep 2
    find('span.item-title', text: 'Colaboradores').click
    sleep 2
    click_button "Novo colaborador"
    sleep 2
end

E('preencho os dados do novo colaborador') do 
    company_name = random_brazilian_fantasy_company_name
    email = generate_uorak_email
    cpf = gera_cpf
    
    find('[formcontrolname="employeeFullName"]').set Faker::Name.name
    sleep 1

    find('[formcontrolname="employeeEmail"]').set(email)
    sleep 1

    find('[formcontrolname="employeeCpf"]').set(cpf)
    sleep 1

    find('[formcontrolname="employeeDateOfBirth"]').click
    sleep 1
    find('nz-date-picker[formcontrolname="employeeDateOfBirth"] input').set('01/01/2000')
    sleep 2

    #workaround
    find('nz-date-picker[formcontrolname="employeeDateOfBirth"] input').send_keys(:enter)

    click_button "Próximo"

    sleep 2

    find('[formcontrolname="employeeSalary"]').set "1500"
    sleep 2

    find('[formcontrolname="employeeHireDate"]').click
    sleep 1
    find('[formcontrolname="employeeHireDate"] input').set('01/06/2023')
    sleep 1
    find('body').click
    sleep 1

    find('[formcontrolname="contractType"]').click
    sleep 3
    find('.ant-select-item-option-content', text: 'Funcionário').click
    sleep 1

    
    find('[formcontrolname="occupationDescription"]').click
    sleep 2
    find('[placeholder="Pesquisar"]').set 'Funcionário'
    sleep 1
    find('.ant-dropdown-menu-item', text: 'Funcionário', visible: true).click
end

Então('cadastro o novo colaborador') do
    click_button "Finalizar"
    sleep 1
    click_button "Cadastrar"
end