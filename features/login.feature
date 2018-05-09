#language:pt

Funcionalidade: Login
    Para que somente eu possa ver as minhas tarefas
    Sendo um usuário 
    Posso logar no sistem com meus dados previamente cadastrados

    @sprint1
    Cenario: Login do usuário

        Dado que acesso o formulário de Login
        Quando faço login com "eu@papito" e "123456"
        Então sou autenticado com sucesso

    @sprint1
    Cenario: Senha incorreta

        Dado que acesso o formulário de login
        Quando faço login com "eu@papito.io" "00000"
        Então deve ver a mensagem de alerta "Senha inválida."

    @sprint2
    Cenario: Usuário não cadastrado

        Dado que acesso o formulário de login
        Quando faço login com "padre.kevedo@noekziste.net" e "xpto123"
        Então devo ver a mensagem de alerta "Usuário não cadastrado"