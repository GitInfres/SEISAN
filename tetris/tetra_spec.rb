# tetra_spec.rb
require './tetra'

describe Tetra do
    it "Turn right" do
        tetra = Tetra.new
        a1 = [[0,0,1,0],
              [0,0,1,0],
              [0,1,1,0],
              [0,0,0,0]]
        a2 = [[0,0,0,0],
              [0,1,0,0],
              [0,1,1,1],
              [0,0,0,0]]
        tetra.turnRight(a1).should eq(a2)
    end
    it "Turn left" do
        tetra = Tetra.new
        a1 = [[0,0,1,0],
              [0,0,1,0],
              [0,1,1,0],
              [0,0,0,0]]
        a2 = [[0,0,0,0],
              [1,1,1,0],
              [0,0,1,0],
              [0,0,0,0]]
        tetra.turnLeft(a1).should eq(a2)
    end
end

