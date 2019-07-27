require "minitest/spec"
require "minitest/autorun"
require_relative "../log_parser"

describe "log_parser" do
  it "pages most views 2 pages" do
    path = File.join(File.dirname(__FILE__), 'webserver_test.log')
    log_parser = LogParser.new(File.open(path, "r"))
    log_parser.pages_most_views.must_equal ["/index 4", "/about 2"]
  end
end
