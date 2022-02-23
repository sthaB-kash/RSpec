class Add
  
  def initialize( a, b )
    @a , @b = a, b
  end

  def sum
    @a + @b
  end
end


obj = Add.new(2, 3)

puts obj.sum