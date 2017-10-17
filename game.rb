require './question'
require './player'

class Game

    def initialize (player1, player2, question)
        @player1 = player1
        @player2 = player2
        @question = question
        @isCurrent = @player1
    end

    def startGame
        begin
            puts "#{@isCurrent.name}: #{@question.generate!}"
            answer = @isCurrent.answer.to_i
            isCorrect = @question.checkAnswer(answer)
            @isCurrent.react(isCorrect)
            if !isCorrect
                @isCurrent.loseLife!
            end
            showResult
            takeTurn(@isCurrent)
        end while !isGameOver?
    end

    def showResult
        puts "#{@player1.name}: #{@player1.getLives}/3 vs #{@player2.name}: #{@player2.getLives}/3"
    end

    def isGameOver?
        if @player1.getLives > 0 && @player2.getLives > 0
            puts '----- NEW TURN -----'
            false
        else
            if @player1.getLives == 0
                puts "#{@player2.name} wins with a score of #{@player2.getLives}/3"
                puts '----- GAME OVER -----'
                puts 'Good bye!'
            else
                puts "#{@player1.name} wins with a score of #{@player1.getLives}/3"
                puts '----- GAME OVER -----'
                puts 'Good bye!'
            end
            true
        end
    end

    def takeTurn(currentPlayer)
        if currentPlayer == @player1
            @isCurrent = @player2
        else 
            @isCurrent = @player1
        end
    end
end