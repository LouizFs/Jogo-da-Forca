require_relative "usuario.rb"
require_relative "palvra.rb"

class Forca
    attr_accessor :plataforma
    attr_accessor :usuario1
    attr_accessor :usuario2

    def initialize
        form_usuario


    end

    def form_usuario
        2.times do |i|
        system("clear")
        print "Nome do jogador #{i+1}: "
        usuario1 = Usuario.new(gets)
        end
    end

    def loop
        Palavra.
        





    end
      







end