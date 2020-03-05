Dado("que eu estou me identificando no site") do
    home.load
    home.btn_entre_ou_cadastre_se.click
end

#===========QUANDO=============

Quando("me identifico como {string}") do |usuario|
    login.entrar_com(usuario)
end

Quando("faço um cadastro sem um dado obrigatório") do
    login.btn_faca_seu_cadastro.click
    cadastro.cadastrar_sem_dado_obrigatorio
end
  

#===========ENTÃO==============

Então("sou encaminhado para preencher minha senha") do
    expect(page).to have_css('#current-password')
end

Então("sou encaminhado para fazer um cadastro") do
    expect(page).to have_css('.btn-green', text: 'Faça seu cadastro')
end

Entao("sou obrigado a preencher um campo obrigatório") do
    expect(page).to have_css('.invalid-feedback', text: 'Campo obrigatório')
end
  