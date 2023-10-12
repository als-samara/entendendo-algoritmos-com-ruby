def impar_ou_par(array, indice)
    if indice.even?
        puts "o índice é par"
    else
        puts "o índice é ímpar"
    end
end

array = [1, 2, 3, 4, 18, 19, 20, 21]

# sempre verifica um unico indice da array, portanto tem tempo constante