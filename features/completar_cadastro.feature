#language:pt

Funcionalidade: Completar cadastro
    Para que eu possa ter os meus dados atualizados
    Sendo um usuário cadastrado
    Posso completar o meu cadastro

    @login @logout @release
    Cenario: Atualizar cadastro

        Dado que acesso o meu perfil
        Quando completo o meu cadastro com os seguintes valores:
            | empresa | QA Ninja |
            | cargo   | CTO      |
        Então devo ver a seguinte mensagem "Perfil atualizado com sucesso."

    @login @logout @release
    Cenario: Empresa com o nome muito curto

        Dado que acesso o meu perfil
        Quando completo o meu cadastro com os seguintes valores:
            | empresa | Oi        |
            | cargo   | Developer |   
        Então devo ver a seguinte mensagem "O nome da empresa deve ter no mínimo 3 caracteres."

    Cenario: Nome deve ser obrigatório

        Dado que acesso o meu perfil
        Quando completo o meu cadastro com os seguintes valores:
            | nome    |        |
            | empresa | Google |
            | cargo   | QA     |
        Então devo ver a seguinte mensagem "Nome completo é obrigatório."
 
    Cenario: Email deve ser obrigatório

        Dado que acesso o meu perfil
        Quando completo o meu cadastro com os seguintes valores:
            | nome    | Maria      |
            | Email   |            |
            | empresa | Amazon     |
            | cargo   | Estagiario |
        Então devo ver a seguinte mensagem "Email é obrigatório."