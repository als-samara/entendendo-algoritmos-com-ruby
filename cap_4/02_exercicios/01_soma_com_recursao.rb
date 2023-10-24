# Quando estiver escrevendo uma função de recursão que envolva um array, o caso base será muitas vezes um array vazio ou com apenas um elemento. Exemplo:
def somar(array)
    total = 0
    if array == []
        return 0
    else
        primeiro_elemento = array.shift
        return primeiro_elemento + somar(array)
    end
end

puts somar([9,8,7,6,5]) # 35

=begin

Primeiro, é retirado o 9 e somado com o restante da array -> chamada de pilha fica em aberto e a função é chamada de novo
Na segunda chamada, é retirado o 8, somado com o restante da array, a chamada fica em aberto e a função é chamada de novo
Na terceira chamada é retirado o 7, somado com o restante da array, a chamada fica em aberto e a função é chamada de novo
Na quarta chamada, é retirado o 6, somado com o restante da array, a chamada fica em aberto e a função é chamada de novo
Na quinta chamada, é retirado o 5, e somado ao restante da array que está vazia. A chamada fica em aberto
Na sexta chamada, a array está vazia e vai retornar 0.
A sexta chamada é a primeira chamada que realmente é finalizada.
Agora, o valor vai ir sendo somado aos valores que ficaram salvos nas outras chamadas:
- 0 é somado a 5 (da quinta chamada), que é somado ao 6, que é somado ao 7... até somar todos os elementos da array.

# Por que usar recursão e não apenas um loop?
# - Linguagens de programação funcional não possuem loops, como Haskell, por exemplo. Se você compreende bem o que é recursão, linguagens funcionais são simples de entender.

=end