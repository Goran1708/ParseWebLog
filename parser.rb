require_relative "log_parser"
require_relative "page_by_address_mapper"
require_relative "parsed_log_printer"

mapper = PageByIpAddressMapper.new(File.open(ARGV[0]))
log_parser = LogParser.new(mapper)
printer = ParsedLogPrinter.new

printer.print(log_parser.pages_most_views)
printer.print(log_parser.pages_unique_views)
