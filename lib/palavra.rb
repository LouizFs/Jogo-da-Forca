class Palavra

    def self.get_palavra
        vetor_palavras = []
        File.open('../palavras.txt', 'r') do |arq|
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

arrayLetras = Palavra.cria_array_palavra("omoto");
arrayPlataforma = Palavra.cria_array_plataforma(arrayLetras);

arrayIndices = Palavra.cria_array_indices(arrayLetras,'o')
arrayPlataforma = Palavra.preenche_plataforma(arrayLetras, arrayPlataforma, arrayIndices)


print arrayLetras
puts
print arrayPlataforma
puts
print arrayIndices
puts
print arrayPlataforma

arrayIndices = Palavra.cria_array_indices(arrayLetras,'m')
arrayPlataforma = Palavra.preenche_plataforma(arrayLetras, arrayPlataforma, arrayIndices)

puts
print arrayPlataforma

arrayIndices = Palavra.cria_array_indices(arrayLetras,'t')
arrayPlataforma = Palavra.preenche_plataforma(arrayLetras, arrayPlataforma, arrayIndices)

puts
print arrayPlataforma




        