# tetris_spec.rb
require './tetris'

describe Tetris do
    it "Turn right" do
        tetris = Tetris.new
        a1 = [[0,0,1,0],
              [0,0,1,0],
              [0,1,1,0],
              [0,0,0,0]]
        a2 = [[0,0,0,0],
              [0,1,0,0],
              [0,1,1,1],
              [0,0,0,0]]
        tetris.turnRight(a1).should eq(a2)
    end
    it "Turn left" do
        tetris = Tetris.new
        a1 = [[0,0,1,0],
              [0,0,1,0],
              [0,1,1,0],
              [0,0,0,0]]
        a2 = [[0,0,0,0],
              [1,1,1,0],
              [0,0,1,0],
              [0,0,0,0]]
        tetris.turnLeft(a1).should eq(a2)
  end

end

