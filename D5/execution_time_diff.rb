

def my_min(arr)
    # arr.each.with_index do |ele1, i1|
    #     arr.each.with_index do |ele2, i2|
    #         if i2 > i1 && ele1 < ele2 
    #             return ele1 
    #         end
    #     end
    # end
    min = arr.first
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            if arr[i] < min 
                min = arr[i]
            elsif arr[j] < min 
                min = arr[j]
            end
        end
    end
    return min
end
# n*n => O(n^2) => quad/poly

def my_min_phase2(arr)
    min = arr.first
    (0...arr.length).each do |i|
        if arr[i] < min 
            min = arr[i]
        end
    end
    return min

end

# O(n) => linear
# p my_min_phase2([ 0, 3, 5, 4, -5, 10, 1, 90 ])



def largest_contiguous_sub_sum(arr)
    

end