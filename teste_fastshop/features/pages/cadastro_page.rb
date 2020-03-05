# frozen_string_literal: true

require_relative '../support/dados.rb'

class CadastroPage < SitePrism::Page
    set_url '/web/checkout/cadastro'
  
    element :txt_nome, '#name'
    element :txt_data_nasc, '#birthday'
    element :txt_telefone, '#telephone'
    element :txt_email, '#email'
    element :txt_senha, '#password'
    element :txt_confirma_senha, '#password_confirmation'
    element :btn_continuar, '.btn-green', text: 'Continuar'

    
    def cadastrar_sem_dado_obrigatorio
     txt_nome.set 'QA FAST SHOP'
     txt_data_nasc.set '26111992'
     txt_telefone.set '11988116990'
     txt_email.set 'teste_fast_@gmail.com'
     txt_senha.set 'abcsenha123'
     txt_confirma_senha.set 'abcsenha123'
     btn_continuar.click
    end

  end