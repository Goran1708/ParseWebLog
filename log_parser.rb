class LogParser
  def initialize(mapper, orderer, file)
    @mapper = mapper
    @orderer = orderer
    @file = file
  end

  def pages_most_views
    page_name_by_address_visits = @mapper.mapPageByIpAddress(@file).map { |k, v| [k, v.size]}
    @orderer.order(page_name_by_address_visits)
  end

  def pages_unique_views
    page_name_by_uniq_page_visits = @mapper.mapPageByIpAddress(@file).map { |k, v| [k, v.uniq.size]}
    @orderer.order(page_name_by_uniq_page_visits)
  end
end
