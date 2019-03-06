require_relative "usuario.rb"
require_relative "palavra.rb"

class Forca
    attr_accessor :plataforma
    attr_accessor :palavra
    attr_accessor :array_palavra
    attr_accessor :usuario1
    attr_accessor :usuario2
    TENTATIVAS = 6

    def initialize
        
        
    end

    def form_usuario
        system("clear")
        print "Nome do jogador 1: "
        @usuario1 = Usuario.new(gets)
        print "\n Nome do jogador 2: "
        @usuario2 = Usuario.new(gets)  
    end

    def geraPlataforma
        @palavra = Palavra::get_palavra;
        @array_palavra = Palavra::cria_array_palavra(palavra)
        @plataforma = Palavra::cria_array_plataforma(@array_palavra);

    end

    def atualiza_plataforma(letra)
        array_indices = Palavra::cria_array_indices(@array_palavra, letra)
        @plataforma = Palavra::preenche_plataforma(@array_palavra,@plataforma,array_indices)
        print @plataforma                                                                                                                                                                                                                                                                                                                                  
    end

    def reseta_jogo
        system('clear')
        form_usuario
        geraPlataforma
        system('clear')
    end

    def intercala_jogador(indice)
        indice = indice  + 1
        puts
        if indice%2 != 0 then
            print "#{@usuario1.nome}" + " informe uma letra: "
            letra = gets.chomp 
        elsif indice%2 == 0 then
            print "#{@usuario2.nome}" + " informe uma letra: "
            letra = gets.chomp
        end

        return letra
    end

    def chuta_palavra
        print "\n\n"
        puts "Descobriu a palavra? S or N"
        opt = gets.chomp
        if opt == 's'
            palavra = gets
            verifica_palavra(palavra)
        end

    end

    def verifica_palavra(palavra)
        
        if palavra != @palavra
            continue
            return
        end
        
        
     if palavra  == @palavra
        system('clear')
        push "Ganhouuu!!!!"
        exit 
     end

    end

    def loop
        cont = 0
        reseta_jogo
        print @plataforma
        print " #{@palavra}"
         while cont < TENTATIVAS do            
            letra = intercala_jogador(cont)
            atualiza_plataforma(letra)
            chuta_palavra                 
            cont = cont + 1
         end
    end
    

end