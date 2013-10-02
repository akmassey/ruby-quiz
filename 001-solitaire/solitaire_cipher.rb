module Solitaire
  class SolitaireCipher

    def initialize(message)
      @message = Message.new(message)
      puts @message
      @message.to_values
    end

  end
end
