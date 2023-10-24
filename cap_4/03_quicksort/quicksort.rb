def quicksort(arr)
    if arr.length < 2
        return arr
    else
        pivo = arr[0]
        menores = []
        maiores = []
        arr.each do |number|
            if number < pivo
                menores << number
            elsif number > pivo
                maiores << number
            end
        end
    end
    return quicksort(menores) + [pivo] + quicksort(maiores)
end

puts quicksort([500 ,299, 789, 547, 1000])