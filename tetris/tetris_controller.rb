# tetris_controller.rb
require './tetris.rb'
require 'timeout'

system "clear"

class Tetris_controller
    def initialize
        @tetris = Tetris.new
        @close = false
    end
    def start_game
        puts 'Start tetris'
        self.display_grid
        @time = Thread.new { 
            begin
                loop do
                    substract_time = 0.1*@tetris.get_game_speed
                    sleep(1-substract_time.to_f)
                    #@tetris.active_tetra_move_down
                end
            end
        }
        
    end
    def end_game
        @time.exit
    end
    def display_grid
        for line in 0..@tetris.get_tetris_width-1
            for col in 0..@tetris.get_tetris_height-1
                print @tetris.get_grid[line][col]
            end
            print "\n"
        end
    end
    def user_input
        false
    end
    def get_game_status?
        @close
    end
end

controller = Tetris_controller.new
controller.start_game
while !controller.get_game_status?
    sleep(2)
end
