module RdNapToEtrs
  class Point
    attr_accessor :x, :y, :nap, :lat, :lng, :h

    def initialize(x: nil, y: nil, nap: nil, lat: nil, lng: nil, h: nil)
      @x = x
      @y = y
      @nap = nap
      @lat = lat
      @lng = lng
      @h = h
    end
  end
end
