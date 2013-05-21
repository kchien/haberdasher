module Haberdasher
  class Decorator < BasicObject
    undef_method :==

    attr_reader :model

    def initialize model
      @model = model
    end

    def method_missing method, *args, &block
      model.send method, *args, &block
    end

    def send(symbol, *args)
      __send__(symbol, *args)
    end
  end
end
