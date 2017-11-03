# Подключаем классы Game, ResultPrinter и WordReader
require_relative "game"
require_relative "result_printer"
require_relative "word_reader"

puts "Игра виселица. Версия 3. (c) goodprogrammer.ru\n\n"
sleep 1

printer = ResultPrinter.new

# Создаем экземпляр класса Word который мы будет использовать для
# вывода информации на экран.
word_reader = WordReader.new

# Соберем путь к файлу со словами из пути к файлу, где лежит программа и
# относительно пути к файлу words.txt.
words_file_name = File.dirname(__FILE__) + "/data/words.txt"

# Создаем объект класса Game, вызывая конструктор и передавая ему слово, которое
# вернет метод read_from_file экземпляра класса WordReader.
game = Game.new(word_reader.read_from_file(words_file_name))

while game.status == 0
  printer.print_status(game)
  game.ask_next_letter
end

printer.print_status(game)
