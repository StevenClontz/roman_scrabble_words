roman_file = File.new('hexadecimal_scrabble_words.txt', 'w')
File.open('TWL06.txt').readlines.each do |line|
  roman_file.puts line if line.strip.split('').all?{|letter| %r{[A-F]}.match letter}
end