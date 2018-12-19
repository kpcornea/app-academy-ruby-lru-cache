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

    it "adds correctly without room" do
      lru.add("I walk the line")
      lru.add(5)
      lru.add([1,2,3])
      lru.add(5)
      lru.add(-5)
      lru.add({a: 1, b: 2, c: 3})
      lru.add([1,2,3,4])
      lru.add("I walk the line")
      lru.add(:ring_of_fire)
      lru.add("I walk the line")
      lru.add({a: 1, b: 2, c: 3})
      expect(lru.cache).to eq([[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}])
    end
  end

  # describe "#count" do
  #   it "returns the count" do
  #
  #     expect(lru.count).to eq(4)
  #   end
  # end

end
