class Board
    attr_reader :size
    def initialize
        @grid= Array.new(4) {Array.new(4,'_')}
        @size = 16 
        @cards = [ "A", "B", "C", "D", "E", "F", "G", "H", "A", "B", "C", "D", "E", "F", "G", "H"   ]
    end

    




    def[](position)
        row, col = position
        @grid[row][col] 

    end

    def[]=(position, val)
        row, col = position
        @grid[row][col] = val
    end

    def empty?(position)
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
        while board_filled? == false 
            row = @grid.sample
            col = row.sample 
            rowindex = @grid.index(row)
            colindex = row.index(col)
            position = [rowindex,colindex]
    
            if empty?(position)
                self[position] = @cards.pop
            end
        end
        @grid
    end

    def 

    


end