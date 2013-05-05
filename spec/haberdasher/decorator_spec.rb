require 'spec_helper'
require 'haberdasher/decorator'

class Book
  attr_accessor :title
  attr_accessor :author

  def initialize
    yield self if block_given?
  end
end

class BookDecorator < Haberdasher::Decorator
  def author_and_book
    "#{author}: #{title}"
  end
end

module Haberdasher
  describe Decorator do

    let(:book) {
      Book.new do |b|
        b.title = title
        b.author = author
      end
    }

    let(:title) { "How to Make Sushi" }
    let(:author) { "John Doe" }

    context "no decorator methods defined" do
      let(:decorator) { described_class.new(book) }

      it "delegates all methods to the wrapped object" do
        decorator.title.should == title
      end
    end

    context "decorator method composed of model's methods" do
      let(:decorator) { BookDecorator.new(book) }

      it "delegates the methods to the wrapped object" do
        decorator.author_and_book.should == "#{author}: #{title}"
      end
    end

  end
end
