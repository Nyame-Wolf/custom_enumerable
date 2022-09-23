require_relative 'my_enumerable'
class MyList
  include MyEnumerable
  def initialize(*args)
    @list = *args
  end

  def each
    @i = 0
    while @i < @list.length
      puts @list[@i]
      @i += 1
    end
  end
end



# Create our list
irb> list = MyList.new(1, 2, 3, 4)
=> #<MyList: @list=[1, 2, 3, 4]>

# Test #all?
irb> list.all? {|e| e < 5}
=> true
irb> list.all? {|e| e > 5}
=> false

# Test #any?
irb> list.any? {|e| e == 2}
=> true
irb> list.any? {|e| e == 5}
=> false

# Test #filter
irb> list.filter {|e| e.even?}
=> [2, 4]