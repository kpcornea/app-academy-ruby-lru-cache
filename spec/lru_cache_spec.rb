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
end
