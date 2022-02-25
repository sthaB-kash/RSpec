class Calculator
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def add
    @num1 + @num2
  end

  def subtract
    @num1 - @num2
  end

  def multiply
    @num1 * @num2
  end

  def divide
    # @num2.zero? ? 'can not divide by zero' : @num1 / @num2
    @num1 / @num2
  end

  def modulus
    # @num2.zero? ? 'can not divide by zero' : @num1 % @num2
    @num1 % @num2
  end
end

# puts "Simple Calculator", "-" * 20

# print "Enter num1: "
# num1 = gets.chomp
# print "Enter num2:"
# num2 = gets.chomp
# calc = Calculator.new(num1.to_i, num2.to_i)
# puts "Addition: #{calc.add}"
# puts "Subtraction: #{calc.subtract}"
# puts "Multiply: #{calc.multiply}"
# puts "Division: #{calc.divide}"
# puts "Remainder: #{calc.modulus}"
