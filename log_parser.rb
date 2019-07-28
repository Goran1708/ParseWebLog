class LogParser

  def initialize(file)
    @file = file
  end

  def pages_most_views
    pageByIpAddressMap = Hash.new
    @file.each do |line|
      pageAndIpAddress = line.split(" ")
      if (pageByIpAddressMap.key?(pageAndIpAddress.first))
        pageByIpAddressMap[pageAndIpAddress.first] << pageAndIpAddress.last
      else
        pageByIpAddressMap[pageAndIpAddress.first] = [pageAndIpAddress.last]
      end
    end

    pageByIpAddressMap = pageByIpAddressMap.map do |k, v|
      k + " " + v.size.to_s
    end
    pageByIpAddressMap
  end

  def pages_unique_views
    pageByIpAddressMap = Hash.new
    @file.each do |line|
      pageAndIpAddress = line.split(" ")
      if (pageByIpAddressMap.key?(pageAndIpAddress.first))
        pageByIpAddressMap[pageAndIpAddress.first] << pageAndIpAddress.last
      else
        pageByIpAddressMap[pageAndIpAddress.first] = [pageAndIpAddress.last]
      end
    end

    pageByIpAddressMap = pageByIpAddressMap.map do |k, v|
      k + " " + v.uniq.size.to_s
    end
    pageByIpAddressMap
  end
end
