require_relative 'enumerable'

class MyList
include MyEnumerable

 def initialize()
  @list = []
  end

  def each
    for i in 0...@list.length do
      yield @list[i]
    end
  end 

end