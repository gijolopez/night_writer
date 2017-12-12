require "minitest/autorun"
require "minitest/pride"
require "./lib/formatter.rb"
require "./lib/encoder.rb"
require "./lib/dictionary.rb"


class FormatterTest < Minitest::Test
  attr_reader :data

  def data
    @data
  end

  def setup
    encoder = Encoder.new(Reader.new('test_reader_file.txt'))
    @data = encoder.braille_pairs
  end

  def test_formatter_instantiates_data
    formatter = Formatter.new(data)

    require 'pry'; binding.pry

    assert_instance_of Formatter, formatter
  end


end
