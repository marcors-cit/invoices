# language: pt

Funcionalidade: Login
    Sendo um usuário do Invoices
    Posso acessar o sistema
    Para cadastrar meus clientes e também lançar faturas


Cenario: Administrador faz login

    Dado que eu tenho os seguintes dados de acesso:
        | email    | admin-qa@invoices.com |
        | password | secret                |
    Quando faço login
    Então vejo o Dashboard com a descrição "Dashboard"
    E a mensagem "Olá, Admin QA, seja bem vindo ao Invoices. Aqui você pode cadastrar seus clientes e lançar suas faturas..."

