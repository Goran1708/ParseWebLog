require "minitest/spec"
require "minitest/autorun"
require_relative "../page_by_address_mapper"

describe PageByIpAddressMapper do
  describe "#mapPageByIpAddress" do
    it "list of all ip addresses mapped to pages" do
      path = File.join(File.dirname(__FILE__), 'webserver_test.log')
      mapper = PageByIpAddressMapper.new(File.open(path, "r"))
      mapper.mapPageByIpAddress.must_equal ({
        "/index" => ["444.701.448.104", "444.701.448.104", "445.701.448.104", "446.701.448.104"],
        "/about" => ["722.247.931.582", "732.247.931.582"]})
    end
  end
end
