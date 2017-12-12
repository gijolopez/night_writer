require_relative 'encoder'
require_relative 'night_write'

class Writer

  attr_reader :data, :file

  # def default_args
  #   {
  #     data: ,
  #     file: write_file
  #   }
  # end

  def initialize(file, *data)
    # args = args.merge(default_args)
    @data = data
    @file = file
  end

  def write_to_file(data)
    File.new(@file, 'w') { |new_file| new_file.puts data }
  end
end
