module LaserBots
  module World
    class Player
      attr_reader :name

      def initialize(name)
        @name = name
      end
    end

    class Robot
      attr_reader :name
      def initialize(name)
        @name = name
      end

      def target_player(nmae)
        # if we are in the same level of the module hierarchy,3:35
        # we don't have to specify that constant resolution operator.
        Player.new(name)
      end
    end
  end
end

player = LaserBots::World::Player.new("Jonatan")
puts player.name
