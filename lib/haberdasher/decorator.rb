module Haberdasher
  class Decorator
    attr_reader :model

    def initialize model
      @model = model
    end

    def method_missing method, *args, &block
      model.send method, *args, &block
    end
  end
end
