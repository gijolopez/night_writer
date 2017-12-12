require "minitest/autorun"
require "minitest/pride"
require "./lib/encoder.rb"
require "./lib/dictionary.rb"


class EncoderTest < Minitest::Test

  def test_data_is_initialized
    file_contents = Encoder.new(Reader.new('test_reader_file.txt'))

    assert_instance_of Encoder, file_contents
  end

  def test_file_data_contains_contents_of_file
    skip
    file_contents = Encoder.new(Reader.new('test_reader_file.txt'))

    assert_equal "This is a test.", file_contents.file_data
  end

  def test_alphabet_is_initialized_with_dictionary
    skip
    file_contents = Encoder.new(Reader.new('test_reader_file.txt'))

    assert_equal Dictionary::LETTERS_DICT, file_contents.alphabet
  end

  def test_split_data_is_an_array_of_chars
    skip
    file_contents = Encoder.new(Reader.new('test_reader_file.txt'))

    assert_equal ["T", "h", "i", "s", " ", "i", "s", " ", "a", " ", "t", "e", "s", "t", "."],
    file_contents.split_file_data
  end

  def test_check_for_braille_value_returns_array_of_braille
    skip
    file_contents = Encoder.new(Reader.new('test_reader_file.txt'))

    assert_equal [".0000.", "0.00..", ".00...", ".00.0.",
                  "......", ".00...", ".00.0.", "......",
                  "0.....", "......", ".0000.", "0..0..",
                  ".00.0.", ".0000.", "......"], file_contents.check_for_braille_value
  end

  def test_split_braille_chars_returns_array_of_braille_chars
    skip
    file_contents = Encoder.new(Reader.new('test_reader_file.txt'))

    assert_equal [".", "0", "0", "0", "0", ".", "0", ".", "0", "0", ".", ".", ".", "0", "0", ".", ".", ".", ".", "0",
     "0", ".", "0", ".", ".", ".", ".", ".", ".", ".", ".", "0", "0", ".", ".", ".", ".", "0", "0", ".",
     "0", ".", ".", ".", ".", ".", ".", ".", "0", ".", ".", ".", ".", ".", ".", ".", ".", ".", ".", ".",
     ".", "0", "0", "0", "0", ".", "0", ".", ".", "0", ".", ".", ".", "0", "0", ".", "0", ".", ".", "0",
     "0", "0", "0", ".", ".", ".", ".", ".", ".", "."], file_contents.split_braille_chars
   end

   def test_braille_pairs_returns_array_of_braille_pairs
     skip
     file_contents = Encoder.new(Reader.new('test_reader_file.txt'))

      assert_equal [".0", "00", "0.", "0.", "00", "..", ".0", "0.", "..", ".0", "0.", "0.", "..", "..", "..",
                    ".0", "0.", "..", ".0", "0.", "0.", "..", "..", "..", "0.", "..", "..", "..", "..", "..",
                    ".0", "00", "0.", "0.", ".0", "..", ".0", "0.", "0.", ".0", "00", "0.", "..", "..", ".."],
                    file_contents.braille_pairs
   end

end
