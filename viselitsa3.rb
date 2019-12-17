#current_part = "./" + File.dirname(__FILE__)

#require current_part + "./game.rb"
#require current_part + "./result_printer.rb"
#require current_part + './word_reader.rb'

require "./game.rb"
require "./result_printer.rb"
require "./word_reader.rb"

printer = ResultPrinter.new

reader = WordReader.new

#slovo = reader.read_form_file (current_part + '/data/words.txt')

slovo = reader.read_from_file('/data/words.txt')

game = Game.new(slovo)


while game.status == 0 do
	printer.print_status(game)
	game.ask_next_letter
end

printer.print_status(game)

