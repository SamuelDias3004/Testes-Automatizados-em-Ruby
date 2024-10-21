#nova_enquete_resp_curta

Quando('submeto o meu login 8') do
    find('input[ng-reflect-name="email"]').set "testedashboardplanilha@uorak.com"
    find('input[ng-reflect-name="password"]').set "123456789"

    click_button "ENTRAR"
    sleep 6
end

Então('sou redirecionado para o Dashboard 8') do
    expect(page).to have_content('Selecione a empresa desejada para prosseguir')
    sleep 2
end

E('seleciono uma empresa 8') do
    find('.ant-input').set "DEMONSTRAÇÃO DESENVOLVIMENTO"
    sleep 2
    find('fa-icon[title="Selecionar empresa"]').click
end

E('seleciono o perfil 6') do
    find("strong", text: "ADMINISTRADOR MASTER").click
    sleep 3
end

Então('sou direcionado para o Dashboard da empresa selecionada 8') do
    expect(page).to have_content('Painel')
    sleep 5
end

E('clico em comunicação e enquetes') do
    all(:xpath, "//div[contains(@class, 'ant-collapse-header')]//p").each_with_index do |element, index|
        puts "Elemento #{index}: #{element.text}"
    end
    find(:xpath, "//div[contains(@class, 'ant-collapse-header')]//p[text()='Comunicação']").click
    sleep 2
    find('span.item-title', text: 'Enquetes').click
    sleep 2
    click_button "Nova Enquete"
    sleep 2
end

E('preencho os dados da nova enquete') do 
    find('[formcontrolname="surveyTitle"]').set 'Enquete TESTE'
    find('[formcontrolname="surveyDescription"]').set 'Enquete TESTE'

    find('[formcontrolname="surveyStartDate"]').click
    sleep 1
    find('[formcontrolname="surveyStartDate"] input').set(Date.today.strftime("%d/%m/%Y")).native.send_keys(:enter)
    sleep 1
    find('[formcontrolname="surveyEndDate"] input').set((Date.today + 1).strftime("%d/%m/%Y")).native.send_keys(:enter)
    sleep 1 

    find('[formcontrolname="surveyQuestionDescription"]').set 'Enquete TESTE'
    find('[formcontrolname="surveyTypeId"]').click
    sleep 1
    find('[ng-reflect-label="Texto de resposta curta"]', match: :first).click

    click_button "Pergunta"
    sleep 1 

    find('[placeholder="Digite a descrição da pergunta 2"]').set 'Enquete TESTE'
    find('[ng-reflect-nz-place-holder="Selecione o tipo da pergunta 2"]').click
    sleep 1
    all('[ng-reflect-label="Texto de resposta curta"]')[1].click
end

Então('cadastro a nova enquete') do
    click_button 'Salvar'
    sleep 1
    click_button 'Cadastrar'
    sleep 3
end

#nova_enquete_resp_longa

Quando('submeto o meu login 9') do
    find('input[ng-reflect-name="email"]').set "testedashboardplanilha@uorak.com"
    find('input[ng-reflect-name="password"]').set "123456789"

    click_button "ENTRAR"
    sleep 6
end

Então('sou redirecionado para o Dashboard 9') do
    expect(page).to have_content('Selecione a empresa desejada para prosseguir')
    sleep 2
end

E('seleciono uma empresa 9') do
    find('.ant-input').set "DEMONSTRAÇÃO DESENVOLVIMENTO"
    sleep 2
    find('fa-icon[title="Selecionar empresa"]').click
end

E('seleciono o perfil 7') do
    find("strong", text: "ADMINISTRADOR MASTER").click
    sleep 3
end

Então('sou direcionado para o Dashboard da empresa selecionada 9') do
    expect(page).to have_content('Painel')
    sleep 5
end

E('clico em comunicação e enquetes 1') do
    all(:xpath, "//div[contains(@class, 'ant-collapse-header')]//p").each_with_index do |element, index|
        puts "Elemento #{index}: #{element.text}"
    end
    find(:xpath, "//div[contains(@class, 'ant-collapse-header')]//p[text()='Comunicação']").click
    sleep 2
    find('span.item-title', text: 'Enquetes').click
    sleep 2
    click_button "Nova Enquete"
    sleep 2
end

E('preencho os dados da nova enquete 1') do 
    find('[formcontrolname="surveyTitle"]').set 'Enquete TESTE'
    find('[formcontrolname="surveyDescription"]').set 'Enquete TESTE'

    find('[formcontrolname="surveyStartDate"]').click
    sleep 1
    find('[formcontrolname="surveyStartDate"] input').set(Date.today.strftime("%d/%m/%Y")).native.send_keys(:enter)
    sleep 1
    find('[formcontrolname="surveyEndDate"] input').set((Date.today + 1).strftime("%d/%m/%Y")).native.send_keys(:enter)
    sleep 1 

    find('[formcontrolname="surveyQuestionDescription"]').set 'Enquete TESTE'
    find('[formcontrolname="surveyTypeId"]').click
    sleep 1
    find('[ng-reflect-label="Texto de resposta longa"]', match: :first).click

    click_button "Pergunta"
    sleep 1 

    find('[placeholder="Digite a descrição da pergunta 2"]').set 'Enquete TESTE'
    find('[ng-reflect-nz-place-holder="Selecione o tipo da pergunta 2"]').click
    sleep 2
    all('[ng-reflect-label="Texto de resposta longa"]')[1].click
end

Então('cadastro a nova enquete 1') do
    click_button 'Salvar'
    sleep 1
    click_button 'Cadastrar'
    sleep 3
end

#nova_enquete_mult_escolha

Quando('submeto o meu login 10') do
    find('input[ng-reflect-name="email"]').set "testedashboardplanilha@uorak.com"
    find('input[ng-reflect-name="password"]').set "123456789"

    click_button "ENTRAR"
    sleep 6
end

Então('sou redirecionado para o Dashboard 10') do
    expect(page).to have_content('Selecione a empresa desejada para prosseguir')
    sleep 2
end

E('seleciono uma empresa 10') do
    find('.ant-input').set "DEMONSTRAÇÃO DESENVOLVIMENTO"
    sleep 2
    find('fa-icon[title="Selecionar empresa"]').click
end

E('seleciono o perfil 8') do
    find("strong", text: "ADMINISTRADOR MASTER").click
    sleep 3
end

Então('sou direcionado para o Dashboard da empresa selecionada 10') do
    expect(page).to have_content('Painel')
    sleep 5
end

E('clico em comunicação e enquetes 2') do
    all(:xpath, "//div[contains(@class, 'ant-collapse-header')]//p").each_with_index do |element, index|
        puts "Elemento #{index}: #{element.text}"
    end
    find(:xpath, "//div[contains(@class, 'ant-collapse-header')]//p[text()='Comunicação']").click
    sleep 2
    find('span.item-title', text: 'Enquetes').click
    sleep 2
    click_button "Nova Enquete"
    sleep 2
end

E('preencho os dados da nova enquete 2') do 
    find('[formcontrolname="surveyTitle"]').set 'Enquete TESTE'
    find('[formcontrolname="surveyDescription"]').set 'Enquete TESTE'

    find('[formcontrolname="surveyStartDate"]').click
    sleep 1
    find('[formcontrolname="surveyStartDate"] input').set(Date.today.strftime("%d/%m/%Y")).native.send_keys(:enter)
    sleep 1
    find('[formcontrolname="surveyEndDate"] input').set((Date.today + 1).strftime("%d/%m/%Y")).native.send_keys(:enter)

    find('[formcontrolname="surveyQuestionDescription"]').set 'Enquete TESTE'
    find('[formcontrolname="surveyTypeId"]').click
    sleep 1 
    find('[ng-reflect-label="Múltipla escolha"]').click
    sleep 1
    
    find('[placeholder="Descrição da alternativa 1"]').set 'Teste 1'
    sleep 1 
    find('[placeholder="Descrição da alternativa 2"]').set 'Teste 2'
    sleep 1
end

Então('cadastro a nova enquete 2') do
    click_button 'Salvar'
    sleep 1
    click_button 'Cadastrar'
    sleep 3
end
    
#nova_enquete_esc_unica

Quando('submeto o meu login 11') do
    find('input[ng-reflect-name="email"]').set "testedashboardplanilha@uorak.com"
    find('input[ng-reflect-name="password"]').set "123456789"

    click_button "ENTRAR"
    sleep 6
end

Então('sou redirecionado para o Dashboard 11') do
    expect(page).to have_content('Selecione a empresa desejada para prosseguir')
    sleep 2
end

E('seleciono uma empresa 11') do
    find('.ant-input').set "DEMONSTRAÇÃO DESENVOLVIMENTO"
    sleep 2
    find('fa-icon[title="Selecionar empresa"]').click
end

E('seleciono o perfil 9') do
    find("strong", text: "ADMINISTRADOR MASTER").click
    sleep 3
end

Então('sou direcionado para o Dashboard da empresa selecionada 11') do
    expect(page).to have_content('Painel')
    sleep 5
end

E('clico em comunicação e enquetes 3') do
    all(:xpath, "//div[contains(@class, 'ant-collapse-header')]//p").each_with_index do |element, index|
        puts "Elemento #{index}: #{element.text}"
    end
    find(:xpath, "//div[contains(@class, 'ant-collapse-header')]//p[text()='Comunicação']").click
    sleep 2
    find('span.item-title', text: 'Enquetes').click
    sleep 2
    click_button "Nova Enquete"
    sleep 2
end

E('preencho os dados da nova enquete 3') do 
    find('[formcontrolname="surveyTitle"]').set 'Enquete TESTE'
    find('[formcontrolname="surveyDescription"]').set 'Enquete TESTE'

    find('[formcontrolname="surveyStartDate"]').click
    sleep 1
    find('[formcontrolname="surveyStartDate"] input').set(Date.today.strftime("%d/%m/%Y")).native.send_keys(:enter)
    sleep 1
    find('[formcontrolname="surveyEndDate"] input').set((Date.today + 1).strftime("%d/%m/%Y")).native.send_keys(:enter)
    
    find('[formcontrolname="surveyQuestionDescription"]').set 'Enquete TESTE'
    find('[formcontrolname="surveyTypeId"]').click
    sleep 1
    find('[ng-reflect-label="Escolha única"]').click
    sleep 1
    find('[placeholder="Descrição da alternativa 1"]').set 'Teste 1'
    sleep 1
    find('[placeholder="Descrição da alternativa 2"]').set 'Teste 2'
end

Então('cadastro a nova enquete 3') do
    click_button 'Salvar'
    sleep 1
    click_button 'Cadastrar'
    sleep 3
end