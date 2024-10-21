Dado('que acesso a página de login') do
    visit "https://homol.rhappcolaborador.com.br/"
end

#Teste login
Quando('submeto o meu login') do
    find('input[ng-reflect-name="email"]').set "testedashboardplanilha@uorak.com"
    find('input[ng-reflect-name="password"]').set "123456789"

    click_button "ENTRAR"
    sleep 5 # temporário
end
  
Então('sou redirecionado para o Dashboard') do
    expect(page).to have_content('Selecione a empresa desejada para prosseguir')
    sleep 5 # temporário
end

#Teste sem_email
Quando('submeto o meu login sem o email') do
    find('input[ng-reflect-name="password"]').set "123456789"
    
    click_button "ENTRAR"
    sleep 3 # temporário
end
  
Então('vejo a mensagem de alerta: E-mail incorreto') do
    alert = first('.ng-tns-c148-0')
    expect(alert).to have_content('E-mail incorreto')
    sleep 3 # temporário
end

#Teste sem_senha
Quando('submeto o meu login sem o senha') do
    find('input[ng-reflect-name="email"]').set "testedashboardplanilha@uorak.com"
    
    click_button "ENTRAR"
    sleep 2 # temporário
end
  
Então('vejo a mensagem de alerta: Senha incorreta') do
    alert = first('.ng-trigger-helpMotion')
    expect(alert).to have_content ("Senha incorreta")
    sleep 3 # temporário
end

#Teste email_ou_senha_incorreto
Quando('submeto o meu login com email incorreto') do
    find('input[ng-reflect-name="email"]').set "testedashboardplanilh@uorak.com"
    find('input[ng-reflect-name="password"]').set "123456789"

    click_button "ENTRAR"
    sleep 2 # temporário
end

Então('vejo a mensagem de alerta:') do
    alert = find('.ant-notification-notice-description')
    expect(alert).to have_content ("Usuário")
    sleep 3 # temporário
end