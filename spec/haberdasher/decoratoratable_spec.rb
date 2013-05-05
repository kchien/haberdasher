require 'haberdasher/decoratoratable'


module Haberdasher
  describe Decoratoratable do

    describe "mixing it into a class" do
      class Apple
        attr_accessor :color
      end

      it "will respond to :decorate" do
        expect {
          Apple.send :include, Haberdasher::Decoratoratable
        }\
        .to change { Apple.new.respond_to? :decorate }\
        .from(false)\
        .to(true)
      end
    end

    describe "a class that does not mix it in and does not define :decorate" do
      subject { Object.new }
      it { should_not respond_to :decorate }
    end
  end
end
