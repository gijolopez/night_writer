require './lib/night_write'
require 'minitest/autorun'
require 'minitest/pride'


class NightWriteTest

  def test_night_write_is_initialized
    night_write = NightWrite.new

    assert_instance_of NightWrite, night_write
  end
