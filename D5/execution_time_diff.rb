

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
    all_subarray=[]
    
    (0...arr.length).each do |i|
        (0...arr.length).each do |j|
            all_subarray << arr[i..j]
        end
    end
    # p all_subarray
    sum=[]
    all_subarray.each do |sub|
        if !sub.empty?
        sum<< sub.sum
        end
    end
    sum.max
end
# Time complexity (n + n^2 => n^2)


# #   list = [5, 3, -7]
# #   p  largest_contiguous_sub_sum(list)
# #   list = [2, 3, -6, 7, -6, 7]
# #   p  largest_contiguous_sub_sum(list) # => 8 (from [7, -6, 7])
#   list = [-5, -1, -3]
#   p  largest_contiguous_sub_sum(list)

def largest_contiguous_sub_sum2(arr)
    largest_sum = arr.max
    current_sum = arr[0]
    min = arr.min
    i = 1
    while i < arr.length - 1
        current_sum += arr[i]
        if current_sum <= min 
            current_sum = arr[i + 1]
        end
        if current_sum > largest_sum 
            largest_sum = current_sum
        end
        
        i += 1
    end
   return largest_sum
end

# list = [-5, -1, -3]
#   p  largest_contiguous_sub_sum2(list)
#     list = [5, 3, -7]
#   p  largest_contiguous_sub_sum2(list)
  list = [2, 3, -6, 7, -6, 7]
  p  largest_contiguous_sub_sum2(list) # => 8 (from [7, -6, 7]
# a = [1,2,3,4]
# sums=[]
#     (1...a.length).each do |i|
#         sums+= a.combination(i).to_a
#     end
#     return 

# p a.combination(1).to_a

# def largest_contiguous_sub_sum2(arr)
#     largest_sum=-10
#     current_sum=-10
#     combinations=[]
#     i=0
#     a = arr.length 
#     while i < arr.length 
#         combinations << arr[i..a-1]
#         i+=1
#     end
# p combinations
#     combinations.each do |sub|
#         current_sum = sub.sum 
#         if current_sum > largest_sum 
#             largest_sum = current_sum
#         end
#     end
#     return largest_sum
# end

# list = [2, 3, -6, 7, -6, 7]
#   p  largest_contiguous_sub_sum2(list)
#   list = [-5, -1, -3]
#   p  largest_contiguous_sub_sum2(list)

