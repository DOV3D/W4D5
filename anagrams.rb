def first_anagram?(str1, str2) # O(n!) because O(n!) dominates O(n)

   list = str1.chars.permutation.to_a # O(n!)

    list.include?(str2.chars) # O(n)
end



# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true


def second_anagram?(str1, str2) # 
    chars = str2.chars # O(n)
    str1.each_char do |char1| #O(n)
        index_str2 = chars.find_index(char1) # ask TA / what's the time complexity of find_index?
        return false if index_str2.nil?
        chars.delete_at(index_str2)  # ask TA / what's the time complexity of delete_at?
    end
    chars.empty? #O(n)
end


# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

def third_anagram?(str1, str2)
    jumble_sort(str1) == jumble_sort(str2)
end

def jumble_sort(str)
    alpha = ("a".."z").to_a
    sorted = false

    until sorted
        sorted = true
        (0...str.length - 1).each do |i|
            if alpha.index(str[i]) > alpha.index(str[i + 1])
                str[i], str[i + 1] = str[i + 1], str[i]
                sorted = false
            end
        end
    end
    str
end

def fourth_anagram?(str1, str2)
    hash = Hash.new(0)
    str1.each_char {|char| hash[char] += 1}
    str2.each_char {|char| hash[char] -= 1}
    hash.all? {|k, v| v == 0}
end