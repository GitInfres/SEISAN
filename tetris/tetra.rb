# tetra.rb
class Tetra
    def self.new tetra_num = nil
        if (tetra_num == nil) 
        #random
        tetra_num = rand(6)
        end
        case tetra_num
        when 0
            @trera_grid = [[0,0,1,0],
            [0,0,1,0],
            [0,1,1,0],
            [0,0,0,0]]
        when 1
            @trera_grid = [[0,0,1,0],
            [0,0,1,0],
            [0,0,1,1],
            [0,0,0,0]]
        when 2
            @trera_grid = [[0,0,1,0],
            [0,0,1,0],
            [0,0,1,0],
            [0,0,1,0]]
        when 3
            @trera_grid = [[0,0,0,0],
            [0,1,1,0],
            [0,1,1,0],
            [0,0,0,0]]
        when 4
            @trera_grid = [[0,0,0,0],
            [0,0,1,0],
            [0,1,1,1],
            [0,0,0,0]]
        when 5
            @trera_grid =  [[0,0,0,0],
            [0,0,1,1],
            [0,1,1,0],
            [0,0,0,0]]
        when 6
            @trera_grid = [[0,0,0,0],
            [1,1,0,0],
            [0,1,1,0],
            [0,0,0,0]]
        else
            # raise error
            raise 'The tetra cannot be initialized properly' 
        end
    end
end

