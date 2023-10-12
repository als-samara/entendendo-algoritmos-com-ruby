def guess_number(array, item)
    first = 0
    last = array.length - 1

    while first <= last
        middle = (last + first) / 2
        guess = array[middle]
        if guess == item
            return middle
        elsif guess < item
            first = middle + 1
        else
            last = middle - 1
        end
    end
    
    "O número #{item} não está inserido na lista"
end

result = guess_number([0,1,2,3,4,5,6,7], 8)
puts result # veja a saída da chamada do método