# FUNÇÃO RECURSIVA QUE CALCULA O FATORIAL DE UM NÚMERO 'n'
def factorial(n)
    if n == 0
        1
    else
        n * factorial(n - 1)
    end
end

# FUNÇÃO RECURSIVA QUE CALCULA OS TERMOS DA SEQUÊNCIA DE FIBONACCI DADO O SEU TERMO
def fib(number)
    return number if number < 2
    fib(number-1) + fib(number-2)
end

# A recursão é um conceito importante e apresentada no primeiro capítulo do livro, pois pode ser usada em diversos algoritmos e pode resolver problemas complexos. O terceiro capítulo aborda o tema com mais profundidade.
# Para entender melhor sobre a função recursiva acima "fib", vamos destrinchá-la:

# fib(8) ==> descobre a 8ª posição da sequência de fibonacci
# 8-1(7) + 8-2(6) = 13 (13 é o número anterior à 8ª posição.)
# A função continua se chamando recursivamente até chegar nos três primeiros números da sequência e atender a condição de number < 2 
# Nenhuma chamada da função é efetivamente finalizada até esse momento, e todos os resultados ficam salvos e são retornados.

# Isso quer dizer que, quando você chama a função fib(number), ela realiza os cálculos recursivos para determinar o enésimo termo da sequência de Fibonacci, o que inclui calcular todos os termos anteriores até chegar ao número desejado.
# Por exemplo, se você chamar fib(5), a função calculará os termos de Fibonacci de 0 até 5:
# fib(5) vai chamar fib(4) e fib(3).
# fib(4) vai chamar fib(3) e fib(2).
# fib(3) vai chamar fib(2) e fib(1).

# E assim por diante, até chegar aos primeiros dois termos que são 0 e 1.

# Portanto, cada chamada da função fib desencadeia uma cadeia de chamadas recursivas que calcula os termos anteriores necessários para encontrar o termo desejado.


# Dica: use o comando ruby + o caminho desse arquivo para executar o arquivo direto no terminal, caso tenha a linguagem Ruby instalada.
puts factorial(5) # 120
puts fib(8) # 21