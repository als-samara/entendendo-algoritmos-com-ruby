# Lista de tarefas (Nodes)
    # adicionar tarefa
    # remover tarefa
    # imprimir lista de tarefas
#

class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node = nil)
        @value = value
        @next_node = next_node
    end
end

class LinkedList
    def initialize()
        @head = nil
    end

    def add(value)
        new_node = Node.new(value)
        if @head.nil?
            @head = new_node
        else
            current_node = @head
            while current_node.next_node != nil
                current_node = current_node.next_node
            end
            current_node.next_node = new_node
        end
    end

    def remove(value)
        if @head.nil?
            return
        end

        if @head.value == value
            @head = @head.next_node
            return
        end

        current_node = @head
        while current_node.next_node != nil && current_node.next_node.value != value
            current_node = current_node.next_node
        end
        if current_node.next_node != nil
            current_node.next_node = current_node.next_node.next_node
        end
    end

    def print_list
    current_node = @head
        while current_node != nil
        puts current_node.value
        current_node = current_node.next_node
        end
    end
end



# Baixe o arquivo e execute os métodos

lista_de_tarefas = LinkedList.new

lista_de_tarefas.add("Estudar JavaScript")

lista_de_tarefas.add("Lavar a roupa")

lista_de_tarefas.add("Ler Capítulo 6 - Entendendo Algoritmos")

lista_de_tarefas.remove("Lavar a roupa")
lista_de_tarefas.print_list

