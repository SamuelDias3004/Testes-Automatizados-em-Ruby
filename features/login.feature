#language: pt
Funcionalidade: Login
    Sendo um usuário que vai acessar a pagina do Portal Group Pessoas
    Quero fazer o meu login no Group Pessoas
    Para que eu possa escolher uma das empresas e realizar tarefas no Portal
    


    @login
    Cenario: Fazer login

        Dado que acesso a página de login
        Quando submeto o meu login
        Então sou redirecionado para o Dashboard


    @sem_email
    Cenario: Submeter login sem o email

        Dado que acesso a página de login
        Quando submeto o meu login sem o email
        Então vejo a mensagem de alerta: E-mail incorreto


    @sem_senha
    Cenario: Submeter login sem o senha

        Dado que acesso a página de login
        Quando submeto o meu login sem o senha
        Então vejo a mensagem de alerta: Senha incorreta


    @email_ou_senha_incorreto
    Cenario: Submeter login com email incorreto

        Dado que acesso a página de login
        Quando submeto o meu login com email incorreto
        Então vejo a mensagem de alerta:


    @selecionar_empresa_ADM
    Cenario: Submeter login e realizar a selecão de uma empresa como ADM MASTER

        Dado que acesso a página de login
        Quando submeto o meu login 2
        Então sou redirecionado para o Dashboard 2
        E seleciono uma empresa 2
        E seleciono o perfil 2
        Então sou redirecionado para o Dashboard da empresa selecionada 2


    @selecionar_empresa_ouvidor
    Cenario: submenter login e realizar a selecão de uma empresa como Ouvidor

        Dado que acesso a página de login
        Quando submeto o meu login 3
        Então sou redirecionado para o Dashboard 3
        E seleciono uma empresa 3
        E seleciono o perfil 3
        Então sou redirecionado para o Dashboard da empresa selecionada 3


    @empresa_nao_cadastrada
    Cenario: Submeter login e não localizar a empresa

        Dado que acesso a página de login
        Quando submeto o meu login 4
        Então sou redirecionado para o Dashboard 4
        E seleciono uma empresa 4
        Então vejo mensagem de alerta:


    @cadastro_empresa
    Cenario: Submeter login e criar uma empresa

        Dado que acesso a página de login 
        Quando submeto o meu login 5
        Então sou redirecionado para o Dashboard 5
        E preencho as informações para criar a empresa
        Então cadastro a nova empresa


    @novo_colaborador
    Cenario: Submeter login e cadastrar um novo colaborador

        Dado que acesso a página de login
        Quando submeto o meu login 6
        Então sou redirecionado para o Dashboard 6
        E seleciono uma empresa 6
        E seleciono o perfil 4
        Então sou redirecionado para o Dashboard da empresa selecionada 6
        E clico em novo colaborador
        E preencho os dados do novo colaborador
        Então cadastro o novo colaborador


    @novo_comunicado
    Cenario: Submeter login e criar um novo comunicado

        Dado que acesso a página de login
        Quando submeto o meu login 7
        Então sou redirecionado para o Dashboard 7
        E seleciono uma empresa 7
        E seleciono o perfil 5
        Então sou direcionado para o Dashboard da empresa selecionada 7
        E clico em comunicação e comunicados
        E preencho os dados do novo comunicado
        Então cadastro o novo comunicado


    @nova_enquete_resp_curta
    Cenario: Submeter login e criar uma nova enquete curta 

        Dado que acesso a página de login 
        Quando submeto o meu login 8
        Então sou redirecionado para o Dashboard 8
        E seleciono uma empresa 8
        E seleciono o perfil 6
        Então sou direcionado para o Dashboard da empresa selecionada 8
        E clico em comunicação e enquetes
        E preencho os dados da nova enquete
        Então cadastro a nova enquete


    @nova_enquete_resp_longa
    Cenario: Submeter login e criar uma enquete longa

        Dado que acesso a página de login 
        Quando submeto o meu login 9
        Então sou redirecionado para o Dashboard 9
        E seleciono uma empresa 9
        E seleciono o perfil 7
        Então sou direcionado para o Dashboard da empresa selecionada 9
        E clico em comunicação e enquetes 1
        E preencho os dados da nova enquete 1
        Então cadastro a nova enquete 1

    @nova_enquete_mult_escolha
    Cenario: Submeter login e criar uma enquete multipla escolha
        
        Dado que acesso a página de login 
        Quando submeto o meu login 10
        Então sou redirecionado para o Dashboard 10
        E seleciono uma empresa 10
        E seleciono o perfil 8
        Então sou direcionado para o Dashboard da empresa selecionada 10
        E clico em comunicação e enquetes 2
        E preencho os dados da nova enquete 2
        Então cadastro a nova enquete 2


    @nova_enquete_esc_unica
    Cenario: Submeter login e criar uma enquete de escolha unica

        Dado que acesso a página de login 
        Quando submeto o meu login 11
        Então sou redirecionado para o Dashboard 11
        E seleciono uma empresa 11
        E seleciono o perfil 9
        Então sou direcionado para o Dashboard da empresa selecionada 10
        E clico em comunicação e enquetes 3
        E preencho os dados da nova enquete 3
        Então cadastro a nova enquete 3


    @novo_normativo
    Cenario: Submeter login e criar um novo normativo

        Dado que acesso a página de login
        Quando submeto o meu login 12
        Então sou redirecionado para o Dashboard 12
        E seleciono uma empresa 12
        E seleciono o perfil 10
        Então sou direcionado para o Dashboard da empresa selecionada 12
        E clico em comunicação e normativos
        E preencho os dados do novo normativo
        Então cadastro o novo normativo


    @fale_com_RH
    Cenario: Submeter login e criar um novo chat com o RH

        Dado que acesso a página de login
        Quando submeto o meu login 13
        Então sou redirecionado para o Dashboard 13
        E seleciono uma empresa 13
        E seleciono o perfil 11
        Então sou redirecionado para o Dashboard da empresa selecionada 13
        E clico em novo colaborador 1
        E preencho os dados do novo colaborador 1
        Então cadastro o novo colaborador 1
        E atualizo a pagina 
        E seleciona a empresa novamente
        E seleciono o perfil novamente
        Então verifico se estou na pagina de inicio novamente
        E clico em comunicação e Fale com RH
        E cadastro o chat do Fale com RH
        Então entro na conversa do chat 