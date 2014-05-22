class Player

	def play_turn(warrior)
		@direction ||= :backward
		space     ||= warrior.feel @direction
		maxHealth = 20

		if space.captive? 
			warrior.rescue! @direction
			@direction = :forward
			return nil
		end
		if space.empty? 
			if @health != warrior.health &&  warrior.health <= 8
				@direction = :backward
			end

			if (warrior.health != maxHealth && @health == warrior.health)
				warrior.rest!
				return nil
			else
				if warrior.health >= 12 || warrior.health == 7
				  @direction = :forward
				end

				if warrior.health != maxHealth && @health == warrior.health
					warrior.rest!
					@health = warrior.health
					return nil
				else
					warrior.walk! @direction
				end
				@health = warrior.health
			end
		else
			warrior.attack! @direction
		end
	end

end