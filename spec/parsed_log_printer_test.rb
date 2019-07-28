require "minitest/spec"
require "minitest/autorun"
require_relative "../parsed_log_printer"

describe ParsedLogPrinter do
  describe "#print" do
    it "print mapped values to screen" do
      printer = ParsedLogPrinter.new
      assert_output("/index 4\n/about 2\n") {
        printer.print({"/index" => "4", "/about" => "2"}) }
    end
  end
end
