# Comparando valores em uma lista

def contem_valor_duplicado(array)
    array.each_with_index do |element, index|
        array.each_with_index do |inner_element, inner_index|
            if index != inner_index && element == inner_element
                return true
            end
        end
    end
    false
end


# Bubble Sort

def bubble_sort(array)
    n = array.length
    
    # Loop externo para controlar o número de iterações
    (n-1).times do |i|
      # Loop interno para fazer as comparações e trocas
      (n-i-1).times do |j|
        if array[j] > array[j+1]
          array[j], array[j+1] = array[j+1], array[j]
        end
      end
    end
    
    array
end
# Exemplo de uso
array_desordenado = [5, 1, 4, 2, 8]
array_ordenado = bubble_sort(array_desordenado.clone)

puts "Array desordenado: #{array_desordenado}"
puts "Array ordenado: #{array_ordenado}"


# Algoritmos com tempo quadrático são mais rápidos que algoritmos com tempo exponencial, no entanto, ainda podem ter desempenho lento para entradas grandes. Algoritmos de ordenação como o Merge Sort ou Quick Sort são mais eficientes que o Bubble Sort e mais usados por esse motivo. Esses algoritmos são tratados com mais profundidade no capítulo 4 do livro "Entendendo Algoritmos".
  