#language:pt
@release
Funcionalidade: Login
    Para que somente eu possa ver as minhas tarefas
    Sendo um usuário 
    Posso logar no sistem com meus dados previamente cadastrados

    Contexto:
        Dado que acesso o formulário de Login

    @sprint1  @logout
    Cenario: Login do usuário

        Quando faço login com "eu@papito.io" e "123456"
        Então sou autenticado com sucesso

    @sprint1
    Cenario: Senha incorreta

        Quando faço login com "eu@papito.io" e "000000"
        Então devo ver a mensagem de alerta "Senha inválida."

    @sprint2
    Cenario: Usuário não cadastrado

        Quando faço login com "padre.kevedo@noekziste.net" e "xpto123"
        Então devo ver a mensagem de alerta "Usuário não cadastrado"