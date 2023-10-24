def multiplica_pelos_valores_da_lista(array)
    result = {}
    array.each do |number|
        sub_result = []
        array.each do |other_number|
            new_number = number * other_number
            sub_result << new_number
        end
        result[number] = sub_result
    end
    result
end


puts multiplica_pelos_valores_da_lista([8,7,4])