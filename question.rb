class Question

  attr_reader :definition, :answer

  def initialize
    @first_number = rand(1...20)
    @second_number = rand(1...20)
    @definition = "What does #{@first_number} plus #{@second_number} equal?"
    @answer = @first_number + @second_number;
  end

end