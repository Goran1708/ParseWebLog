class ParsedLogPrinter

  def print(header, map)
    puts header
    map.each do |key, value|
      puts key + " " + value.to_s
    end
  end
end
