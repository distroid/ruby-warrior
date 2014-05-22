class Player

	def play_turn(warrior)
		space     = warrior.feel
		maxHealth = 20

		if space.empty?
			if space.captive? 
				warrior.rescue!
				return nil
			end
			if (warrior.health != maxHealth && @health == warrior.health) || warrior.health <= 12
				warrior.rest!
				return nil
			else
				warrior.walk!
				@health = warrior.health
			end
		else
				warrior.attack!
				return nil
		end
	end

end