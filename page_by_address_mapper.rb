class PageByIpAddressMapper

  def mapPageByIpAddress(file)
    pageByIpAddressMap = Hash.new
    File.open(file).each do |line|
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
