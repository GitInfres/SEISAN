# tetris.rb

class Tetris
    def initialize
        @tetris_grid = Array.new(20) { Array.new(10, 0) }
        @active_tetra = Tetra.new
        @active_tetra_coord = [0, 3]
        TETRA_WIDTH 4
        TETRA_HEIGHT 4
    end
end

