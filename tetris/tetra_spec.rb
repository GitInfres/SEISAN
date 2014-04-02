# tetra_spec.rb
require './tetra'

describe Tetra do
    it "Turn right" do
        tetra = Tetra.new(0)
        a2 = [[0,0,0,0],
              [0,1,0,0],
              [0,1,1,1],
              [0,0,0,0]]
        tetra.turn_right().should eq(a2)
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
        Tetra.new(0).should eq(tetra_j)

        # tetra l
        tetra_l = [[0,0,1,0],
                   [0,0,1,0],
                   [0,0,1,1],
                   [0,0,0,0]]
        
        Tetra.new(1).should eq(tetra_l)

        # tetra i
        tetra_i = [[0,0,1,0],
                   [0,0,1,0],
                   [0,0,1,0],
                   [0,0,1,0]]
        
        Tetra.new(2).should eq(tetra_i)

        # tetra carré
        tetra_c = [[0,0,0,0],
                   [0,1,1,0],
                   [0,1,1,0],
                   [0,0,0,0]]
        
        Tetra.new(3).should eq(tetra_c)

        # tetra t
        tetra_t = [[0,0,0,0],
                   [0,0,1,0],
                   [0,1,1,1],
                   [0,0,0,0]]
        
        Tetra.new(4).should eq(tetra_t)

        # tetra s
        tetra_s = [[0,0,0,0],
                   [0,0,1,1],
                   [0,1,1,0],
                   [0,0,0,0]]
        
        Tetra.new(5).should eq(tetra_s)

        # tetra z
        tetra_z = [[0,0,0,0],
                   [1,1,0,0],
                   [0,1,1,0],
                   [0,0,0,0]]

        Tetra.new(6).should eq(tetra_z)

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

