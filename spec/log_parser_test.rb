require "minitest/spec"
require "minitest/autorun"
require_relative "../log_parser"

describe LogParser do
  describe "#pages_most_views" do
    it "shows 2 pages with how much they were viewed" do
      path = File.join(File.dirname(__FILE__), 'webserver_test.log')
      log_parser = LogParser.new(File.open(path, "r"))
      log_parser.pages_most_views.must_equal ["/index 4", "/about 2"]
    end
  end

  describe "#pages_unique_views" do
    it "shows 2 pages with how much unique viewes there were" do
      path = File.join(File.dirname(__FILE__), 'webserver_test.log')
      log_parser = LogParser.new(File.open(path, "r"))
      log_parser.pages_unique_views.must_equal ["/index 3", "/about 2"]
    end
  end
end
