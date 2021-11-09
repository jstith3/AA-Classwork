class Board
    attr_reader :size
    def initialize
        @grid= Array.new(4) {Array.new('_')}
        @size = 16 
    end

    def[](position)
        row, col = position
        @grid[row][col] 

    end

    def[]=(position, val)
        row, col = position
        @grid[row][col] = val
    end

    def empty(position)
        if self[position] == '_'
            return true
        end
        return false 
    end

    def board_filled?
        return false if @grid.any? { |row| row.any? { |ele| ele == '_' } }
        return true 
    end

    def populate
        

        


    end


end