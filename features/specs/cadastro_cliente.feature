#language: pt

Funcionalidade: Realizar cadastro de clientes

    Contexto: Acessar tela de cadastro
        Dado que acesso a tela de cadastro

    @cadastro1 @regressao
    Cenário: Cadastro simples
        Quando preencho os dados para o cadastro
            | nome     | Marcos         |
            | rg       | 40.084.012-1   |
            | cpf      | 069.840.110-78 |
        E clico em salvar
        Então a mensagem "Cadastro efetuado com sucesso" é exibida

    @cadastro2 @regressao
    Cenário: Cadastro completo
        E selecino a opção completo no cadastro
        Quando preencho os dados necessarios para o cadastro
            | nome          | Marcos Henrique |
            | rg            | 30.522.287-9    |
            | cpf           | 429.960.330-35  |
            | dt_nascimento | 07/03/1997      |
            | telefone      | 15996363689     |
            | empresa       | Pizzaria        |
            | cargo         | Entregador      |
        E clico em salvar
        Então a mensagem "Cadastro efetuado com sucesso" é exibida

    @cadastro3 @regressao
    Cenário: Validar cadastro de usuário na tela principal
        E preencho os dados para o cadastro
            | nome | Mirele         |
            | rg   | 40.084.012-1   |
            | cpf  | 069.840.110-78 |
        Quando clico em salvar
        E a mensagem "Cadastro efetuado com sucesso" é exibida
        Então valido que usuário foi criado na tela principal

    @cadastro4 @regressao
    Cenário: Validar usuário cadastrado sem telefone
        E preencho os dados para o cadastro
            | nome | Marcos |
        Quando clico em salvar
        E retorno para a tela principal
        Então valido a mensagem "Sem telefone" 

    @cadastro5 @regressao
    Cenário: Validar usuário cadastrado com telefone
        E preencho os dados para o cadastro
            | nome     | Marcos      |
            | telefone | 15996363689 |
        Quando clico em salvar
        E retorno para a tela principal
        Então valido que há telefone cadastrado
