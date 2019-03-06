class Palavra

    def self.get_palavra
        vetor_palavras = []
        File.open('palavras.txt', 'r') do |arq|
            while line = arq.gets do
                vetor_palavras.push(line)
            end
        end
    return vetor_palavras.sample

    end

    def self.cria_array_palavra(palavra)
        arr = palavra.split("")
        return arr
    end
    
    def self.cria_array_plataforma(array)
        array_letras = array.dup
        array_letras.fill("$")
        return array_letras
    end

    def self.cria_array_indices(array, letra)
        indexs = array.each_index.select { |i| array[i] == letra }
        if indexs
            return indexs
        else
            return false
        end
        
    end

    def self.preenche_plataforma(arrayLetras, plataforma, arrayIndices)
        
        arrayIndices.each do |i|
            plataforma[i] = arrayLetras[i]    
        end

        return plataforma

    end

end





        