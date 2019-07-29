require_relative "log_parser"
require_relative "page_by_address_mapper"
require_relative "parsed_log_printer"
require_relative "orderers/ascending_orderer"

mapper = PageByIpAddressMapper.new
orderer = AscendingOrderer.new
printer = ParsedLogPrinter.new

log_parser = LogParser.new(mapper, orderer, ARGV[0])

printer.print("Most page views ordered from most page view to less: \n", log_parser.pages_most_views)
printer.print("\nUnique page views ordered from most page view to less: \n", log_parser.pages_unique_views)
