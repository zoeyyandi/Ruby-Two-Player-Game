class Question 
    SMALLEST_NUM = 1
    LARGEST_NUM = 20

    def generate!
        @num1 = rand(SMALLEST_NUM..LARGEST_NUM)
        @num2 = rand(SMALLEST_NUM..LARGEST_NUM)
        self.prompt
    end

    def prompt
        "What does #{@num1} plus #{@num2} equal?"
    end

    def answer
        @num1 + @num2
    end

    def checkAnswer(userAnswer)
        userAnswer == self.answer
    end

end
