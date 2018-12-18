class LRUCache

  def initialize(length)
    # need to take into account original length of cache and resizing i think. yeah i think that deletion will be part of the add method
    @cache = Array.new(length)
  end

  def count
    # return number of elements currently in cache
    @cache.count
  end

  def add(el)
    # adds element to cache according to LRU principle
    # need to take into account nil autofill on initializing array and what happens when reaching max capacity (lru gets deleted)
    if @cache.include?(el)
      @cache.delete(el)
      @cache << el
    else
      @cache << el
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @cache
  end

  private
  # helper methods go here

end
