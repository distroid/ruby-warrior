class Player

	def play_turn(warrior)
		space     = warrior.feel
		maxHealth = 20

		if space.empty?
			if (warrior.health != maxHealth && @health == warrior.health) || warrior.health < 8 || warrior.health == 12
				warrior.rest!
			else
				warrior.walk!
				@health = warrior.health
			end
		else
			warrior.attack!
		end
	end

end