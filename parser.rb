require_relative "log_parser"
require_relative "page_by_address_mapper"

mapper = PageByIpAddressMapper.new(File.open(ARGV[0]))
log_parser = LogParser.new(mapper)

log_parser.pages_most_views
log_parser.pages_unique_views
