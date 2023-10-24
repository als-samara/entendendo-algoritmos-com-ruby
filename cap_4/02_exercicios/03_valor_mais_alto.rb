def higher_value(array)
    if array.length == 0
        return 0
    else
        first_el = array.shift
        higher_value_return = higher_value(array)
        
        return first_el < higher_value_return ? higher_value_return : first_el
    end
end

puts higher_value([4,5,6,7,8])

# A função higher_value é implementada de forma recursiva, o que significa que ela chama a si mesma com um array menor a cada chamada. Ela continua fazendo isso até que o array esteja vazio, momento em que ela começa a retornar os valores de forma acumulada, encontrando o maior valor no processo.