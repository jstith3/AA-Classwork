
 class Card

    attr_reader :facedown, :value

    def initialize
        @facedown = true
        @value = ["A","B", "C", "D", "E" , "F", "G", "H"].sample

    end

    def hide
        if facedown == false
            @facedown = true
            @value = "_"
        end
    end


    

    def reveal
        if facedown == true
            @facedown = false
            @value
        end
    end




end