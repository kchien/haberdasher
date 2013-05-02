require 'spec_helper'
require 'haberdasher/decorator'

module Haberdasher
  describe Decorator do

    class Book
      attr_accessor :title

      def initialize
        yield self if block_given?
      end
    end

    context "no decorator methods defined" do
      let(:model) {
          Book.new do |b|
            b.title = book_title
          end
      }
      let(:book_title) { "How to Make Sushi" }

      it "delegates all methods to the wrapped object" do
        decorated_model = described_class.new(model)
        decorated_model.title.should == book_title
      end
    end

  end
end
