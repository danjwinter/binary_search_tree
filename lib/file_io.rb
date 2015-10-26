class FileIO
  def load_file(file_name)
    file = File.read(file_name)
    file
  end

  def write_file(string, file_name)
    f = File.new(file_name, "w")
    f.write(string)
  end
end
