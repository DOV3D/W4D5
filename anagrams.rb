def first_anagram?(str1, str2)

   list = str1.chars.permutation.to_a

    list.include?(str2.chars)
end



# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true


def second_anagram?(str1, str2)
    chars = str2.chars 
    str1.each_char do |char1|
        index_str2 = chars.find_index(char1)
       return false if index_str2.nil?
        chars.delete_at(index_str2) 
    end
    chars.empty?
end


p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true