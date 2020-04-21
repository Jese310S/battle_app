require 'prompt'
require 'pastel'


prompt = TTY::Prompt.new
pastel = Pastel.new

class Army
    attr_accessor :army
    def initialize 
        @army = []
    end

end