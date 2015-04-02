roman_file = File.new('roman_scrabble_words.txt', 'w')
File.open('TWL06.txt').readlines.each do |line|
  roman_file.puts line if line.strip.split('').all?{|letter| %r{[IVXLCDM]}.match letter}
end