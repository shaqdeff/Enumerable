require_relative 'enumerable'

class MyList
  include MyEnumerable

  def initialize(arr)
    @list = arr
  end

  def each
    @list.length.times do |i|
      yield @list[i]
    end
  end
end

list = MyList.new([1, 2, 3, 4])
list.all? { |e| e < 5 }
list.all? { |e| e > 5 }
list.any? { |e| e == 2 }
list.any? { |e| e == 6 }
list.filter(&:even?)
