class Player
    attr_accessor :lives
    attr_reader :name
    def initialize(name)
        @name = name 
        @lives = 3
    end

    def answer
        print "> "
        $stdin.gets.chomp
    end

    def react(isCorrect)
        if isCorrect 
            puts 'YES! You are correct!'
        else 
            puts 'Seriously? No!'
        end
    end

    def loseLife!
        @lives = @lives - 1
    end

    def getLives
        @lives
    end

end

