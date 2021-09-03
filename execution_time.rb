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


end



