# O caso base para pesquisa binária, que também é um algoritmo do tipo dividir para conquistar, é se a array possui um item só

def busca_binaria(lista, valor)
    first = 0
    last = (lista.length - 1)

    while first <= last
        middle = (first + last) / 2

        if lista[middle] == valor
            return lista.index(lista[middle])
        elsif lista[middle] < valor
            first = middle + 1
        else 
            lista[middle] > valor
            last = middle - 1
        end
    end
    return false
end

# Retorna o índice de um valor em uma lista ordenada, ou false se o valor não estiver nele

minha_lista = [8,9,10,11,12,13,14]
puts "Índice: #{busca_binaria(minha_lista, 10)}"