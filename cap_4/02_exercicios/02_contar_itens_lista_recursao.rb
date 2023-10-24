def element_count(array)
    total = 0
    
    if array.length == 0
        return 0
    else
        array.shift
        return 1 + element_count(array)
    end
end

array = ['lista', 'com', '4', 'itens']
puts element_count(array)