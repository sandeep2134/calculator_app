class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    digits = input.split(',').map{|x| x.to_i}
    digits.reduce(0, :+)
  end
end