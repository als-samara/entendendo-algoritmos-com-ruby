def two_sum(nums, target)
    nums.each_with_index do |number, index|
        diferenca_target_e_algum_numero = target - number
        if nums.include?(diferenca_target_e_algum_numero) && nums.index(diferenca_target_e_algum_numero) != index
        return [index, nums.index(diferenca_target_e_algum_numero)]
        end
    end
    return nil
end

# Exercício retirado do site leetcode: https://leetcode.com/problems/two-sum/