class Diamond

  END_OF_LINE = "\n"

  def build(input)
    @chars = ("A"..input).to_a
    output_diamond
  end

  def output_diamond
    output = ""
    @chars.each do |char|
      output << output_base(char)
    end

    @chars.reverse[1..-1].each do |char|
      output << output_base(char)
    end

    output
  end

  def output_base(letter)
    base = ""
    @chars.reverse.each do |char|
      base << char_or_underline(char, letter)
    end

    @chars[1..-1].each do |char|
      base << char_or_underline(char, letter)
    end

    base << END_OF_LINE
  end

  private

  def char_or_underline(char, letter)
    (char == letter) ? letter : '_'
  end
end
