# tetris.rb
require './tetra.rb'

class Tetris
    def initialize
        @TETRIS_WIDTH = 10
        @TERTIS_HEIGHT = 22
        @tetris_grid = Array.new(@TERTIS_HEIGHT) { Array.new(@TETRIS_WIDTH, 0) }
        @active_tetra = Tetra.new
        @active_tetra_coord = [0, 3]
        @TETRA_WIDTH = 4
        @TETRA_HEIGHT = 4
        @FIRST_VISIBLE_ROW = 2
        @speed_down = 1
    end
    def active_tetra_get_coord 
        return @active_tetra_coord
    end
    def active_tetra_move_left
        if (active_tetra_can_move_left?)
            @active_tetra_coord[1] -= 1
            @active_tetra_coord            
        end
    end
    def active_tetra_can_move_left?
        tetra_first_column = self.get_active_tetra_first_col
        
        if ((@active_tetra_coord[1] - 1) + tetra_first_column > 0) 
            return true
        end    
        return false
    end
    def active_tetra_move_right
        if (active_tetra_can_move_right?)
            @active_tetra_coord[1] += 1
            @active_tetra_coord
        end
    end
    def get_active_tetra_first_col
        line = 0
        col = 0

        until @active_tetra.get_grid[line][col] == 1 do
            line+=1
            if line > 3
                line = 0
                col += 1
            end
        end

        return col    
    end
    def get_active_tetra_first_last_col
        line = 3
        col = 3
    
        until @active_tetra.get_grid[line][col] == 1 do
            line-=1
            if line < 0
                line = 3
                col -= 1
            end
        end

        return col
    end

    def active_tetra_can_move_right?
        tetra_last_column = self.get_active_tetra_first_last_col
        
        if ((@active_tetra_coord[1] + 1) + tetra_last_column > 0)          
            return true
        end
        return false
    end
    def fall_speed_on
        @speed_down += 10
    end
    def fall_speed_off
        @speed_down -= 10
    end
end

