def my_min(list)
    smallest = list[0]
    (0...list.length).each do |i|
        (i+1...list.length).each do |j|
            if  list[i] < list[j] && list[i] < smallest
                smallest = list[i]
            end
        end
    end
    smallest
 end

#  list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#  p my_min(list)



def my_min_2(list)
    smallest_num = list[0]
    list.each {|num| smallest_num = num if num < smallest_num}
    smallest_num
end

#  list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#  p my_min_2(list)

def largest_contiguous_subsum(list)
    subs = []
    (0...list.length).each do |start_idx|
        (start_idx...list.length).each do |end_idx|
            subs << list[start_idx..end_idx]
        end
    end
    
    largest_sum_pair = subs[0].sum
    subs.each {|sub| largest_sum_pair = sub.sum if sub.sum > largest_sum_pair}
    largest_sum_pair
end

# def lcs(list)
# =begin
# write function using O(n) with O(1)
# var 1 => keep tally of largest sum
# var 2 => tracks current sum
# =end

#     if list.all? {|el| el < 0}
#         return list.max
#     end
#     largest_sum = list[0]
#     current_sum = 0    
#     # (0...list.length -  1).each do |i|
#     #     if list[i] + list[i + 1] > current_sum
#     #         current_sum = list[i] + list[i + 1]
#     #         if current_sum > largest_sum
#     #             largest_sum = current_sum
#     #         end
#     #     else
#             current_sum = 0
#             next
#         end
#     end

#     largest_sum
# end

def lcs(list)
=begin
write function using O(n) with O(1)
var 1 => keep tally of largest sum
var 2 => tracks current sum
=end

    return list.max if list.all? {|el| el < 0}

    largest_sum = list[0]
    current_sum = 0    
    (0...list.length).each do |i|
        if list[i] > current_sum
            current_sum += list[i]
            if current_sum > largest_sum
                largest_sum = current_sum
            end
        elsif current_sum + list[i] > 0
            current_sum += list[i]
        else
            current_sum = 0
        end
    end

    largest_sum
end

p 





