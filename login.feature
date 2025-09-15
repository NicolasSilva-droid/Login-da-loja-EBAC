            #language: pt

            Funcionalidade: Login na plataforma EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu tenha uma conta existente

            Cenário: Usuário e senha existentes
            Quando eu digitar o usuário "bruno@ebac.com"
            E a senha "shop@123"
            Então deve exibir uma mensagem de boas vindas "Olá Bruno"

            Cenário: Usuário incorreto
            Quando eu digitar o usuário "franc0@ebac.com"
            E a senha "shop@123"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Senha incorreta
            Quando eu digitar o usuário "bruno@ebac.com"
            E a senha "ygdsd@123"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar contas existentes
            Quando eu digitar <usuario>
            E a <senha>
            Então deve exibir uma <mensagem> de boas vindas

            Exemplos:
            | usuario              | senha      | mensagem        |
            | "bruno@ebac.com"     | "shop@123" | "Olá Bruno"     |
            | "francisco@ebac.com" | "shop@456" | "Olá Francisco" |
            | "luiza@ebac.com"     | "shop@789" | "Olá Luiza"     |