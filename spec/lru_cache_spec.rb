require 'rspec'
require 'lru_cache'

describe  LRUCache do
  subject(:lru) { LRUCache.new(4) }

  describe "#initialize" do
    it "initializes an array cache" do
      expect(lru.cache).to eq([])
    end

    it "sets a max_length" do
      expect(lru.max_length).to eq(4)
    end
  end

  describe "#add" do
    it "adds correctly with room" do
      lru.add("I walk the line")
      lru.add(5)
      expect(lru.cache).to eq(["I walk the line", 5])
    end
  end

  # describe "#count" do
  #   it "returns the count" do
  #
  #     expect(lru.count).to eq(4)
  #   end
  # end

end
