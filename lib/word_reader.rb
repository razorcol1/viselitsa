# encoding: utf-8
#
# Класс WordReader, отвечающий за чтение слова для игры.
class WordReader
  def read_from_args
    ARGV[0]
  end

  def read_from_file(file_name)
    if !File.exist?(file_name) then return nil end

    f = File.readlines(file_name).sample.chomp
  end
end
