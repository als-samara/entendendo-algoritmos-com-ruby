# Encontrar o menor número

def find_smallest_number(array)

    smallest_number = array[0]
    array.each do |number|
        if number < smallest_number
            smallest_number = number
        end
    end

    smallest_number
end

posicoes = [10,47,89,78,40,5]

find_smallest_number(posicoes) # 5


# Ordenação por Seleção

def ordenarPorSelecao(arr)
    sorted_array = []
    
    arr.length.times do
        smallest_number = find_smallest_number(arr)
        sorted_array << smallest_number
        arr.delete_at(arr.index(smallest_number))
    end
    sorted_array
end

puts ordenarPorSelecao(posicoes)


# Obs: a linguagem Ruby possui o método .min que poderia ser utilizado para encontrar o menor valor da array. No entanto, o livro mostra os dois algoritmos separadamente, como fiz acima.