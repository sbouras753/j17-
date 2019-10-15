
 class Player
    attr_accessor  :name, :life_points

    def initialize (name, life_points)
            @name = name
            @life_points = life_points
    end
    def show_state 
        p "#{@name} a #{life_points} points de vie et une arme de #{ @weapon_level}"
    end 

    def gets_damage #(damages)
        #@life_points -= damages
        
        if @life_points <= 0 
            return p "#{@name} a été tué!"
        #else
        #p "#{@name} a #{@life_points} points de vie"
        end
    end

    def attacks(player)

        attaque = compute_damage

        while @life_points > 0 && player.life_points > 0     
            p "#{@name} attaque #{player.name}"
            player.life_points -= attaque
            p "elle lui afflige #{attaque} points de dommages"
            break
        end    
        gets_damage
    
    end

    def compute_damage
        return rand(1..6)
      end
 end

 class HumanPlayer < Player
    attr_accessor :weapon_level

    def initialize(life_points)
        @life_points = life_points
        life_points = 100
        @weapon_level = 1
        p "#{@life_points} #{@weapon_level}"
    end
 end