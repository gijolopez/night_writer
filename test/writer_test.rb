require "minitest/autorun"
require "minitest/pride"
require "./lib/writer"

class WriterTest < Minitest::Test

  def writer
    @writer = Writer.new('braille.txt', )
  end



end
