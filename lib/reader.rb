class Reader
  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

  def open_file
    File.open(@filename, 'r')
  end

  def read_file
    File.read(open_file).chomp
  end

  def close_file
    open_file.close
  end
end
