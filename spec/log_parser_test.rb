require "minitest/spec"
require "minitest/autorun"
require_relative "../log_parser"

describe "log_parser" do
  it "pages most views 2 pages" do
    log_parser = LogParser.new(File.open("webserver_test.log", "r"))
    log_parser.pages_most_views.must_equal "/index 1 \n /help_page/1 1"
  end
end
