class PageByIpAddressMapper

  def initialize(file)
    @file = file
  end

  def mapPageByIpAddress
    pageByIpAddressMap = Hash.new
    @file.each do |line|
      pageAndIpAddress = line.split(" ")
      if (pageByIpAddressMap.key?(pageAndIpAddress.first))
        pageByIpAddressMap[pageAndIpAddress.first] << pageAndIpAddress.last
      else
        pageByIpAddressMap[pageAndIpAddress.first] = [pageAndIpAddress.last]
      end
    end

    pageByIpAddressMap
  end
end
