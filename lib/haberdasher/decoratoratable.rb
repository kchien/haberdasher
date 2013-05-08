require 'active_support'

module Haberdasher
  module Decoratoratable
    def decorate
      decorator_class.new self
    end

    def decorator_class
      "#{self.class}Decorator".constantize
    end
  end
end
