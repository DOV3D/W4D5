def bad_two_sum?(arr, target_sum) # BRUTE FORCE => n^2
    (0...arr.length).each do |i|
        (i + 1...arr.length).each do |j|
            return true if arr[i] + arr[j] == target_sum
        end
    end
    false
end

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target_sum)
    sorted_arr = quick_sort(arr)
    (0...sorted_arr.length - 1).each do |i|
        return true if sorted_arr[i] + sorted_arr[i + 1] == target_sum
    end
    false
end

def quick_sort(arr)
    return arr if arr.length <= 1

    pivot = arr.shift
    left = arr.select {|el| el < pivot}
    right = arr.select {|el| el > pivot}
    left.okay_two_sum? + [pivot] + right.okay_two_sum?
end

arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false