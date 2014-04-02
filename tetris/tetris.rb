class Tetris
	def turnRight(tetris_before)
		x = tetris_before.length
		y = tetris_before[0].length
		tetris_after = [
			[0,0,1,0],
          	[0,0,1,0],
          	[0,1,1,0],
          	[0,0,0,0]]
		for i in 0..x
			for j in 0..y
				tetris_after[j][x-1-i] = tetris_before[i][j]
			end
		end
		return tetris_after
	end
end

