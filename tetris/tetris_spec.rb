# tetris_spec.rb
require './tetris'

describe Tetris do
    describe Movement do
        it "Move left" do
            tetris = Tetris.new
            coord = tetris.getCoord()
            tetris.moveLeft()
            tetris.getCoord().should eq([coord[0],coord[1]-1])
        end
        it "Move right" do
            tetris = Tetris.new
            coord = tetris.getCoord()
            tetris.moveRight()
            tetris.getCoord().should eq([coord[0],coord[1]+1])                     
        end
        it "Speed down" do
    
        end
        describe Possibility do
            it "Can move left" do

            end
            it "Can move right" do

            end
            it "Can move down" do

            end
        end
    end
    describe Rules do
        it "Full rows" do

        end
        it "Clear full rows" do
            
        end
        it "End of game" do
            
        end
    end
end
