# tetris.rb
require './tetra.rb'

class Tetris
    def initialize
        @tetris_grid = Array.new(20) { Array.new(10, 0) }
        @active_tetra = Tetra.new
        @active_tetra_coord = [3, 0]
        @TETRA_WIDTH = 4
        @TETRA_HEIGHT = 4
    end
    def active_tetra_get_coord 
        return @active_tetra_coord
    end
    def active_tetra_move_left
        if (active_tetra_can_move_left?)
            @active_tetra_coord[0] -= 1
            @active_tetra_coord            
        end
    end
    def active_tetra_can_move_left?
        true
    end
    def active_tetra_move_right
        if (active_tetra_can_move_right?)
            @active_tetra_coord[0] += 1
            @active_tetra_coord
        end
    end
    def active_tetra_can_move_right?
        true
    end
end

