class LogParser

  def initialize(file)
    @file = file
  end

  def pages_most_views
    @file.each do |line|
      puts line
    end
  end

  def pages_unique_views
  end
end
