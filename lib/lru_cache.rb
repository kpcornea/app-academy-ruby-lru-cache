class LRUCache
  attr_reader :cache, :max_length

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
    if count < @max_length
      add_with_room(el)
    else
      add_without_room(el)
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @cache
  end

  private
  # helper methods go here

  def add_with_room(el)
    if @cache.include?(el)
      @cache.delete(el)
      @cache << el
    else
      @cache << el
    end
  end

  def add_without_room(el)
    if @cache.include?(el)
      @cache.delete(el)
      @cache << el
    else
      @cache.shift
      @cache << el
    end
  end

end
