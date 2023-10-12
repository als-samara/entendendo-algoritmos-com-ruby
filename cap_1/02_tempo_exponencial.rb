def exponential(number)
    if number <= 1
      return 2
    else
      return exponential(number - 1) + exponential(number - 1)
    end
end

# A função exponential é recursiva e calcula 2 elevado à potência number.

# Se você passasse 5 como argumento para a função exponential, o código iria executar da seguinte maneira:

# exponential(5) é chamado.

# Como 5 não é menor ou igual a 1, o código entra no bloco else.

# O código chama exponential(4) duas vezes:

# exponential(4) é chamado pela primeira vez:
# 4 não é menor ou igual a 1, então ele chama exponential(3) duas vezes.
# exponential(4) é chamado pela segunda vez:
# 4 não é menor ou igual a 1, então ele chama exponential(3) duas vezes novamente.
# Agora, exponential(3) é chamado duas vezes:

# exponential(3) é chamado pela primeira vez:
# 3 não é menor ou igual a 1, então ele chama exponential(2) duas vezes.
# exponential(3) é chamado pela segunda vez:
# 3 não é menor ou igual a 1, então ele chama exponential(2) duas vezes novamente.
# Isso continua, com exponential(2) chamado duas vezes e depois exponential(1) chamado quatro vezes (devido à recursão).

# Finalmente, quando exponential(1) é chamado, a condição number <= 1 é verdadeira, então ele retorna 2.

# Em seguida, todos os resultados das chamadas recursivas são somados e retornados.

# O problema com este código é que cada chamada à função gera duas novas chamadas, o que leva a um crescimento exponencial [ O(2^n) ] no número de chamadas e rapidamente excede os limites de recursão do ambiente de execução, levando a um estouro de pilha. Portanto, essa função não é uma implementação eficaz para calcular exponenciais.


# O código abaixo é uma implementação mais eficiente da função exponential, com tempo de execução linear.

def exponential_linear(number)
  if number == 0
    1
  else
    2 * exponential_linear(number - 1)
  end
end

=begin

A análise do tempo de execução depende de como a recursão é tratada. A condição de parada ocorre quando number é igual a 0. Vamos analisar o tempo de execução:

Caso Base (Condição de Parada): Quando number é igual a 0, a função retorna 1. Isso é uma operação constante, portanto, temos O(1) operações.

Recursão: Quando number é maior que 0, a função chama a si mesma com number - 1. Cada chamada resulta em uma nova chamada até que o caso base seja alcançado. Portanto, a profundidade da recursão é number.

Em cada nível da recursão, a função realiza uma multiplicação por 2 (return 2 * exponential(number - 1)).

Como a profundidade da recursão é number, o número total de operações recursivas é O(number).

Combinando os dois pontos acima, podemos dizer que o tempo de execução da função exponential (na notação "big O") é O(number).

Isso significa que o tempo de execução aumenta linearmente com o valor de number. Por exemplo, se number for 5, a função realizará aproximadamente 5 operações. Se number for 10, serão cerca de 10 operações, e assim por diante.

Esta é uma eficiente implementação recursiva para calcular exponenciais, pois o número de operações é diretamente proporcional ao valor de number. No entanto, é sempre importante ter em mente os limites de recursão do ambiente de execução, pois para valores muito grandes de number, a recursão pode causar um estouro de pilha (stack overflow).
  
=end

puts exponential(5) # Agora o resultado estará correto e deve apresentar o número 32