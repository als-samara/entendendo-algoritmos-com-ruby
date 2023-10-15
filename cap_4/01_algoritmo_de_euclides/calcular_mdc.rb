def calcular_mdc(first_number, second_number)
    @first_number = first_number
    @second_number = second_number

    while first_number % second_number != 0
        temp = second_number
        second_number = first_number % second_number
        first_number = temp
    end
    puts "MDC = #{second_number}"
    if second_number == 1
        puts "Os números #{@first_number} e #{@second_number} são primos entre si"
    end
end

calcular_mdc(1000, 333)


