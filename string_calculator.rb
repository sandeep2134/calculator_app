class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    digits = input.split(',').map{|x| x.to_i}
    digits.reduce(0, :+)
    digits(input).reduce(0, :+)
  end

  def self.digits(input)
    input.gsub("\n", delimiter).split(delimiter).map{|x| x.to_i}
  end

  def self.delimiter
    ','
  end
end