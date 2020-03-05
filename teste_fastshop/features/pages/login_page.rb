# frozen_string_literal: true

require_relative '../support/dados.rb'

class LoginPage < SitePrism::Page
    set_url '/web/checkout/login'
  
    element :txt_user, '#inputUser'
    element :txt_password, '#current-password'
    element :btn_continuar, '.btn-green', text: 'Continuar'
    element :btn_faca_seu_cadastro, '.btn-green', text: 'Faça seu cadastro'

    
    def entrar_com(usuario)
     txt_user.set LOGIN[:"#{usuario}"]
     btn_continuar.click
    end

  end