class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    digits = input.split(',').map{|x| x.to_i}
    digits.reduce(0, :+)
    digits(input).reduce(0, :+)
  end

  def self.digits(input)
    input.gsub("\n", delimiter(input)).split(delimiter(input)).map{|x| x.to_i}
  end

  def self.delimiter(input)
    input[0,2] == '//' ? input[2,1] : ','
  end
end