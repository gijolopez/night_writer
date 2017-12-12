require './lib/night_write'
require 'minitest/autorun'
require 'minitest/pride'


class NightWriteTest < Minitest::Test

  def test_night_write_is_initialized
    night_write = NightWriter.new

    assert_instance_of NightWriter, night_write
  end
  def test_file_data_reads_file
    night_write = NightWriter.new('test_reader_file.txt')

    assert_equal "This is a test.", night_write.file_data
  end

  def test_encoder_encodes_braille_pairs
    night_write = NightWriter.new('test_reader_file.txt')

    assert_equal [".0", "00", "0.", "0.", "00", "..", ".0", "0.", "..", ".0", "0.", "0.", "..", "..", "..",
                  ".0", "0.", "..", ".0", "0.", "0.", "..", "..", "..", "0.", "..", "..", "..", "..", "..",
                  ".0", "00", "0.", "0.", ".0", "..", ".0", "0.", "0.", ".0", "00", "0.", "..", "..", ".."],
                  night_write.encode_data_to_braille_pairs
  end




end
