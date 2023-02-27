  class LRUCache
    def initialize(size)
        @store = []
        @max_size = size
    end

    def count
      # returns number of elements currently in cache
        store.length
    end

    def add(el)
      # adds element to cache according to LRU principle
        #  check size
        # check if item already exists
        if store.include?(el)
            store.delete(el)
            store << el
            return
        end
        case count <=> max_size
        when -1
            store << el
        when 0, 1
            store.shift
            store << el
        end
    end

    def show
      # shows the items in the cache, with the LRU item first
       store
    end

    private
    # helper methods go here!
    attr_reader :store, :max_size

  end

  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  p johnny_cache.count # => returns 2
  


  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)

  p johnny_cache.show

  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  p johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
