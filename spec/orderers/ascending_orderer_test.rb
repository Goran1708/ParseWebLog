require "minitest/spec"
require "minitest/autorun"
require_relative "../../orderers/ascending_orderer"

describe AscendingOrderer do
  describe "#order" do
    it "order items in list" do
      orderer = AscendingOrderer.new
      orderer.order([["/about", 2], ["/index", 4]]).must_equal ([["/index", 4], ["/about", 2]])
    end
  end
end
