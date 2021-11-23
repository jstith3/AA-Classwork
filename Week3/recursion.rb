# def range(start, finish)
#     new = []
#     if finish < start
#         return new
#     else 
#         (start...finish).each do |num|
#         new << num 
#         end 
#     end 

#     return new.sum
# end 
# p range(1, 5)

# def range(start, finish)
#    return 0 if finish == start 
#     return[]   if finish < start 
            
#     finish - 1 + range(start, finish - 1)
    
# end 
# p range(1, 5)

# recursion 1
# def exponent(b,n)
#     return 1 if n == 0
#     b * exponent(b,n-1)
# end

# p exponent(2,3)

# recursion 2
# def exponent(b,n)
#     return 1 if n == 0

#     if n.even? 
#         exponent(b, n/2)  * exponent(b, n/2)
#         #  exponent(2,1)  =>  exponent(2,1/2) *  exponent(2,1/2) = 2**.5 *  2**.5 = 2**1
#     else
#     b * (exponent(b, (n-1) / 2) * exponent(b, (n-1) / 2) )
#     end
# end

# p exponent(2,3)
# p exponent(1,0)
# p exponent(1,1)
# p exponent(1,2)
# p exponent(2,0)
# p exponent(2,2)


# def deep_dup(arr)
#     copy = []


#     arr.each do |ele|
        
#         if ele.is_a?(Array)
#             copy << deep_dup(ele)
#         elsif
#             copy << ele

#         end 
#     end 

#     return copy
 
# end 
# arr = [1, [2], [3, [4]]]
# copy = deep_dup(arr)
# p copy
# copy[1] << 0
# p copy 
# p arr 

# def fib(n)
#     return [] if n == 0
#     return [0] if n == 1
#     return [0,1] if n == 2



# next_num = fib(n-1)[-1] + fib(n-1)[-2]
# fib(n-1) << next_num 
    
# #   sum =  [fib(n-1)] + [fib(n-2)] 
# end

# p fib(0)  
# p fib(1)
# p fib(2)
# p fib(3)
# # [1,1,2]
# p fib(4)
# # [1,1,2,3]
# p fib(5)
# p fib(6)

# def bsearch(array, target)
#     return nil if array.empty? 

#     mid = (array.count / 2) 
#     left = array[0...mid]
#     right = array[mid+1..-1]
#     if array[mid] == target

#         return mid
  
#     end
#     if array[mid] > target

#         bsearch(left, target)
#     else
        
#        r = bsearch(right, target)
#        if r.nil?
#             return nil
#        else
#             mid + r + 1
#        end 

#     end 
 
# end

# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil

def merge_sort(arr)
#    mid = arr.count / 2
#    left = arr[0...mid]
#    right = arr[mid..-1]
  
#    if arr.length != 1
       
#        l = merge_sort(left)
#        p l
#         r = merge_sort(right)
#         p r
       
#    else
#       return arr
#    end 

 arr.each_slice(1)

end 

def merge(*arr)
#  arr.each do |ele|
#         if ele.length == 1
end 


p merge_sort([38, 27, 43,3, 9, 82, 10])
# [38, 27, 43, 3]
# [38], [27], [43], [3]