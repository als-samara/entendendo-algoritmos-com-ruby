require 'deque'

def menor_caminho(grafo)
    fila_de_pesquisa = Deque.new
    fila_de_pesquisa << grafo["voce"]
    verificadas = []

    while fila_de_pesquisa
        amigos = fila_de_pesquisa.shift
        amigos.each do |amigo|
            if !verificadas.include?(amigo)
                if pessoa_e_vendedor(amigo)
                    puts "achou o vendedor: #{amigo}"
                    return
                else
                    fila_de_pesquisa << grafo[amigo]
                    verificadas << amigo
                    fila_de_pesquisa.delete(amigo)
                end  
            end
        end
    end
end

grafo = {}
grafo["voce"] = ['alice', 'bob', 'claire']
grafo["bob"] = ['anuj','peggy']
grafo["alice"] = ['peggy']
grafo["claire"] = ['thom', 'jonny']
grafo["anuj"] = []
grafo["peggy"] = []
grafo["thom"] = []
grafo["jonny"] = []

def pessoa_e_vendedor(nome)
    return nome[-1] == "m"
end

puts menor_caminho(grafo) # achou o vendedor: thom