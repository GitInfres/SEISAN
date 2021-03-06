# tetris_spec.rb
# Grid
# 10 cells width
# 20 cells height
# x->
# y
# |
# v
require './tetris'

describe "Tetris" do
    describe "Movement" do
        it "Move left" do
            tetris = Tetris.new
            tetris.active_tetra_move_left()
            tetris.active_tetra_get_coord().should eq([0,2])
        end
        it "Move right" do
            tetris = Tetris.new
            tetris.active_tetra_move_right()
            tetris.active_tetra_get_coord().should eq([0,4])                     
        end
        it "Speed down" do
            tetris = Tetris.new
            tetris.fall_speed_on
            tetris.get_game_speed.should eq(5)
            tetris.fall_speed_off
            tetris.get_game_speed.should eq(1)
        end
        describe "Possibility" do
            it "Can move left" do
                tetris = Tetris.new
                tetris.active_tetra_can_move_left?().should eq(true)
                tetris.active_tetra_move_left()
            end
            it "Can move right" do
                tetris = Tetris.new
                tetris.active_tetra_can_move_right?().should eq(true)
                tetris.active_tetra_move_right() 
            end
            it "Can move down" do

            end
        end
    end
    describe "Rules" do
        it "Full rows" do

        end
        it "Clear full rows" do
            
        end
        it "End of game" do
            
        end
    end
end
