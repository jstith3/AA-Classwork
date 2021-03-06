class Array

    def my_each(&prc)
        i = 0
        while i < self.length
            prc.call(self[i])

            i += 1
        end
        self
    end

    def my_select(&prc)
        results = []
        
        self.my_each do |ele|
           results << ele  if prc.call(ele) 
        end  
        # results << self if self.my_each(prc) == true

        results
    end

#     a = [1, 2, 3]
# print a.my_select { |num| num > 1 } # => [2, 3]
# print a.my_select { |num| num == 4 } # => []

    def my_reject(&prc)
        results = []
        
        self.my_each do |ele|
           results << ele  if !prc.call(ele) 
        end  
        

        results
    end
#     a = [1, 2, 3]
# print a.my_reject { |num| num > 1 } # => [1]
#  print a.my_reject { |num| num == 4 } # => [1, 2, 3]

    def my_any?(&prc)
        self.my_each do |ele|
            return true if prc.call(ele) 
        end
        false
    end

    def my_all?(&prc)
        self.my_each do |ele|
            return false if !prc.call(ele) 
        end
        true
    end
    a = [1, 2, 3]
#   puts  a.my_any? { |num| num > 1 } # => true
#     puts a.my_any? { |num| num == 4 } # => false
# puts a.my_all? { |num| num > 1 } # => false
# puts a.my_all? { |num| num < 4 } # => true

    def my_flatten
        results = []        
        self.my_each do |ele|
            if !ele.is_a?(Array)
                results += [ele] 
            else
                results += ele.my_flatten
            end
        end 
        results
    end

# p [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten # => [1, 2, 3, 4, 5, 6, 7, 8]

    def my_zip(*args)
        results=Array.new(self.length) { Array.new{args.length +1, :X}}
p results
        grid = [self]
        grid += args
# p grid
        # (0...grid.length).each do |i|
        #     (0..args.length).each do |j|
        #         if grid[j][i]
        #             results[i][j] = grid[j][i]
        #         end
        #     end
        # end
        # results
    end

a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]
[1, 2, 3].my_zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
a.my_zip([1,2], [8])   # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
[1, 2].my_zip(a, b)    # => [[1, 4, 7], [2, 5, 8]]

c = [10, 11, 12]
d = [13, 14, 15]
[1, 2].my_zip(a, b, c, d)    # => [[1, 4, 7, 10, 13], [2, 5, 8, 11, 14]]

end
   

            

    