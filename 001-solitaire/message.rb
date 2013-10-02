module Solitaire
  class Message
    def initialize(str)
      @input = str
      @characters = ('A'..'Z').to_a
    end

    def remove_punctuation
      @input.gsub(/[^A-Za-z]/, "").upcase
    end

    def to_s
      str = remove_punctuation

      str.gsub(/\S{5}/).map do |part|
        part + ' '
      end.join
    end

    def to_values
      str = remove_punctuation

      output = []
      str.each_char do |char|
        output << @characters.index(char) + 1
      end

      p output
    end
  end
end
