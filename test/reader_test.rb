require "minitest/autorun"
require "minitest/pride"
require "./lib/reader.rb"

class ReaderTest < Minitest::Test

  def test_first_file_is_initialized
    file = Reader.new('test_reader_file.txt')
    assert_instance_of Reader, file
  end

  def test_file_opens_and_reads_contents
    skip
    file = Reader.new('test_reader_file.txt')
    file.open_file

    assert_equal "This is a test.", file.read_file
  end

end
