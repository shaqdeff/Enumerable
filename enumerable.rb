module MyEnumerable
  def all?
    is_all = true
    @list.each do |n|
      is_all = false unless yield n
    end
    puts is_all
  end

  def any?
    is_any = false
    @list.each do |n|
      is_any = true if yield n
    end
    puts is_any
  end

  def filter
    filter_arr = []
    @list.each do |n|
      filter_arr << n if yield n
    end
    print filter_arr
  end
end
