class String
  def is_roman?
    %r{^[IVXLCDM]*$}.match self.upcase.strip
  end
  def is_hexy?
    %r{^[A-F]*$}.match self.upcase.strip
  end
end

roman_file = File.new('roman_scrabble_words.txt', 'w')
File.open('TWL06.txt').readlines.each do |line|
  roman_file.puts line if line.is_roman?
end
roman_file.close

hexy_file = File.new('hexadecimal_scrabble_words.txt', 'w')
File.open('TWL06.txt').readlines.each do |line|
  hexy_file.puts line if line.is_hexy?
end
hexy_file.close