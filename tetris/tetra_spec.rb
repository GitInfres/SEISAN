# tetra_spec.rb
require './tetra'

describe Tetra do
    it "Turn right" do
        tetra = Tetra.new(0)
        a2 = [[0,0,0,0],
              [0,1,0,0],
              [0,1,1,1],
              [0,0,0,0]]
        tetra.turnRight().should eq(a2)
    end
    it "Turn left" do
        tetra = Tetra.new(0)
        a2 = [[0,0,0,0],
              [1,1,1,0],
              [0,0,1,0],
              [0,0,0,0]]
        tetra.turnLeft().should eq(a2)
    end
    it "Get random tetra" do
      # tetra j
      tetra_j = [[0,0,1,0],
            [0,0,1,0],
            [0,1,1,0],
            [0,0,0,0]]
      # tetra l
      tetra_l = [[0,0,1,0],
            [0,0,1,0],
            [0,0,1,1],
            [0,0,0,0]]
      # tetra i
      tetra_i = [[0,0,1,0],
            [0,0,1,0],
            [0,0,1,0],
            [0,0,1,0]]
      # tetra carré
      tetra_c = [[0,0,0,0],
            [0,1,1,0],
            [0,1,1,0],
            [0,0,0,0]]
      # tetra t
      tetra_t = [[0,0,0,0],
            [0,0,1,0],
            [0,1,1,1],
            [0,0,0,0]]
      # tetra s
      tetra_s = [[0,0,0,0],
            [0,0,1,1],
            [0,1,1,0],
            [0,0,0,0]]
      # tetra z
      tetra_z = [[0,0,0,0],
            [1,1,0,0],
            [0,1,1,0],
            [0,0,0,0]]

      liste_tetras = Array.new()
      liste_tetras.push(tetra_j)
      liste_tetras.push(tetra_l)
      liste_tetras.push(tetra_i)
      liste_tetras.push(tetra_c)
      liste_tetras.push(tetra_t)
      liste_tetras.push(tetra_s)
      liste_tetras.push(tetra_z)
      tetra = Tetra.new

      (liste_tetras.include? tetra).should eq(true)
    end
end

