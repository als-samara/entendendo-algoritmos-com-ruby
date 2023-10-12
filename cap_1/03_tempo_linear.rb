# Escreva um método em Ruby que receba um array de números inteiros e um valor alvo. O método deve verificar se o valor alvo está presente no array. 

def search_number_on_array(array, target_value)
    if
      array.include?(target_value)
      puts "o número pertence a array #{array}"
    else
        puts "o número não pertence a array #{array}"
    end
end

numeros = [0, 1, 2, 3, 4, 5, 7, 8]

# O algoritmo tem tempo de execução O(n) (linear) porque sempre percorre toda a lista e o tempo aumenta conforme aumenta a quantidade de itens.
        
