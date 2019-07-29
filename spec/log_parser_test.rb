require "minitest/spec"
require "minitest/autorun"
require_relative "../log_parser"
require_relative "../parsed_log_printer"
require_relative "../page_by_address_mapper"
require_relative "../orderers/ascending_orderer"
require_relative "../orderers/default_orderer"

describe LogParser do
  before do
    path = File.open(File.join(File.dirname(__FILE__), 'webserver_test.log'))
    mapper = PageByIpAddressMapper.new
    orderer = AscendingOrderer.new
    printer = ParsedLogPrinter.new

    @log_parser = LogParser.new(mapper, orderer, path)
  end

  describe "#pages_most_views" do
    it "shows 2 pages with how much they were viewed" do
      path = File.open(File.join(File.dirname(__FILE__), 'webserver_test.log'))
      mapper = PageByIpAddressMapper.new
      orderer = DefaultOrderer.new
      printer = ParsedLogPrinter.new
      log_parser = LogParser.new(mapper, orderer, path)

      log_parser.pages_most_views.must_equal ([["/about", 2], ["/index", 4]])
    end

    it "shows 2 pages sorted" do
      @log_parser.pages_most_views.must_equal ([["/index", 4], ["/about", 2]])
    end
  end

  describe "#pages_unique_views" do
    it "shows 2 pages with how much unique viewes there were" do
      @log_parser.pages_unique_views.must_equal ([["/index", 3], ["/about", 2]])
    end
  end
end
