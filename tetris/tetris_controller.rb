# tetris_controller.rb
require './tetris.rb'

system "clear"

class Tetris_controller
    def initialize
        @tetris = Tetris.new
    end
    def start_game
        puts 'Start tetris'
        self.display_grid
        self.time_machine
    end
    def display_grid
        for line in 0..@tetris.get_tetris_width-1
            for col in 0..@tetris.get_tetris_height-1
                print @tetris.get_grid[line][col]
            end
            print "\n"
        end
    end
    def time_machine
        timer_down = 20
        current_time = 0
        loop do
            current_time += 1
            if (current_time >= timer_down)
                #@tetris.active_tetra_move_down
                current_time = 0
            end
            key_pressed = self.user_input
            if (key_pressed != false)
                print "I found a #{key_pressed}"
            end
        end
    end
    def user_input
        false
    end
end

Tetris_controller.new.start_game
