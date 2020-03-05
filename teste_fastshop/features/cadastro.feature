#language: pt
Funcionalidade: Cenarios importantes para revisar

Contexto: 
Dado que eu estou me identificando no site

Cenário: Cliente cadastrado
Quando me identifico como "cliente_cadastrado"
Então sou encaminhado para preencher minha senha

Cenário: Cliente não cadastrado
Quando me identifico como "cliente_nao_cadastrado"
Então sou encaminhado para fazer um cadastro
 

Cenário: Cliente sem um dado obrigatório
Quando me identifico como "cliente_nao_cadastrado"
E faço um cadastro sem um dado obrigatório
Entao sou obrigado a preencher um campo obrigatório
