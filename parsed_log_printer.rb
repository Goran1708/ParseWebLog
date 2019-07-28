class ParsedLogPrinter
  def print(map)
    map.each do |key, value|
      puts key + " " + value.to_s
    end
  end
end
