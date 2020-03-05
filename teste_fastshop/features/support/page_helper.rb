Dir[File.join(File.dirname(__FILE__),
    '../pages/*_page.rb')].each { |file| require file }

# Modulos para chamar as classes instanciadas
module Pages

    def home
        @home ||= HomePage.new
    end

    def login
        @login ||= LoginPage.new
    end

    def cadastro
        @cadastro ||= CadastroPage.new
    end
end
