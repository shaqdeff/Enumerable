require_relative 'enumerable'

class MyList
include MyEnumerable

 def initialize()
  @list = []
  end

  def each
    @list.length.times do |i|
      yield @list[i]
    end
  end 

end