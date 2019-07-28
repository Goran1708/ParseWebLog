class LogParser

  def initialize(mapper)
    @mapper = mapper
  end

  def pages_most_views
    pageByIpAddressMap = @mapper.mapPageByIpAddress

    pageByIpAddressMap = pageByIpAddressMap.map do |k, v|
      k + " " + v.size.to_s
    end
    pageByIpAddressMap
  end

  def pages_unique_views
    pageByIpAddressMap = @mapper.mapPageByIpAddress

    pageByIpAddressMap = pageByIpAddressMap.map do |k, v|
      k + " " + v.uniq.size.to_s
    end
    pageByIpAddressMap
  end
end
