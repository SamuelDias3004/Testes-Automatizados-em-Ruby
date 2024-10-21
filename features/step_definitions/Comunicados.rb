#@novo_comunicado

Quando('submeto o meu login 7') do
    find('input[ng-reflect-name="email"]').set "testedashboardplanilha@uorak.com"
    find('input[ng-reflect-name="password"]').set "123456789"

    click_button "ENTRAR"
    sleep 6
end

Então('sou redirecionado para o Dashboard 7') do
    expect(page).to have_content('Selecione a empresa desejada para prosseguir')
    sleep 2
end

E('seleciono uma empresa 7') do
    find('.ant-input').set "DEMONSTRAÇÃO DESENVOLVIMENTO"
    sleep 2
    find('fa-icon[title="Selecionar empresa"]').click
end

E('seleciono o perfil 5') do
    find("strong", text: "ADMINISTRADOR MASTER").click
    sleep 3
end

Então('sou direcionado para o Dashboard da empresa selecionada 7') do
    expect(page).to have_content('Painel')
    sleep 5
end

E('clico em comunicação e comunicados') do
    all(:xpath, "//div[contains(@class, 'ant-collapse-header')]//p").each_with_index do |element, index|
        puts "Elemento #{index}: #{element.text}"
    end
    find(:xpath, "//div[contains(@class, 'ant-collapse-header')]//p[text()='Comunicação']").click
    sleep 2
    find('span.item-title', text: 'Comunicados').click
    sleep 2
    click_button "Novo Comunicado"
    sleep 2
end

E('preencho os dados do novo comunicado') do 
    find('[formcontrolname="communicationTitle"]').set 'Comunicado TESTE'
    sleep 2
    find('quill-editor[formcontrolname="communicationText"]', visible: false).click
    page.execute_script("document.querySelector('quill-editor[formcontrolname=\"communicationText\"] .ql-editor').innerHTML = 'Comunicado Teste'")
end

Então('cadastro o novo comunicado') do 
    click_button 'Confirmar'
    sleep 2
    click_button 'Cadastrar'
end