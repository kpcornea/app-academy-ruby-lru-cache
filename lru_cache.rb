class LRUCache

  def initialize(max_length)
    @cache = []
    @max_length = max_length
  end

  def count
    # return number of elements currently in cache
    @cache.count
  end

  def add(el)
    # adds element to cache according to LRU principle
    # need to take into account nil autofill on initializing array and what happens when reaching max capacity (lru gets deleted)

    if count < @max_length
      if @cache.include?(el)
        @cache.delete(el)
        @cache << el
      else
        @cache << el
      end
    else
      if @cache.include?(el)
        @cache.delete(el)
        @cache << el
      else
        @cache.shift
        @cache << el
      end
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @cache
  end

  private
  # helper methods go here

  def room?
    @cache.include?(nil)
  end

  def add_with_room

  end

  def add_without_room

  end

end
