# tetris_controller.rb
require './tetris.rb'
require 'timeout'
require 'thread'
#require 'io/console'
require 'curses'
require 'io/wait'

system "clear"

class Tetris_controller
    def initialize
        @tetris = Tetris.new
        @close = false
        Thread.new { self.listen_keyboard }
    end
    def start_game
        sleep(1)
        self.display_grid
        @time = Thread.new { 
            begin
                loop do
                    substract_time = 0.1*@tetris.get_game_speed
                    sleep(1-substract_time.to_f)
                    #@tetris.active_tetra_move_down
                    system "clear"
                    self.display_grid
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
    def char_if_pressed
        begin
            c = nil
            system("stty raw -echo") # turn raw input on
            if $stdin.ready?
                c = $stdin.getc
            end
            system "stty -raw echo" # turn raw input off
            c.chr if c
        ensure
            system "stty -raw echo" # turn raw input off
        end
    end 
    def listen_keyboard
        while true
            c = char_if_pressed
            self.commands(c)
            sleep(0.05)
        end
    end
    def commands key
        case key
        when "q"
            @close = true
        else
        print key
        end
    end
    def get_game_status?
        @close
    end
end

controller = Tetris_controller.new
controller.start_game
while !controller.get_game_status?
    sleep(1)
end
