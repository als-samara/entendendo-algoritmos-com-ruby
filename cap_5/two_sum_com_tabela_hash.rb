def two_sum(nums, target)
    num_to_index = {}

    nums.each_with_index do |number, index|
        diferenca_target_e_numero = target - number
        if num_to_index.key?(diferenca_target_e_numero)
            return [num_to_index[diferenca_target_e_numero], index]
        end

        num_to_index[number] = index
    end
end
array = [3,3]
puts two_sum(array, 6)

# Exercício retirado do site leetcode: https://leetcode.com/problems/two-sum/
# O tempo de execução do mesmo exercício, com o uso da tabela hash, foi reduzido de O(n²) para O(n).