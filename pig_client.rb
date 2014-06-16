require 'pig_latin'

class TerminalClient

  def self.start
    puts "Type any english word to translate to Pig Latin:"
    input = gets.chomp
    input_arr = input.split
    TerminalClient.translate(input_arr)
  end

  def self.translate(arr)
    translated_arr = arr.map do |word|
      PigLatin.translate(word)
    end
    puts translated_arr.join(" ")
  end
  self.start
end

TerminalClient.start
