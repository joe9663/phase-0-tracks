class TodoList
  attr_accessor :list

  def initialize(items)
    @list = []
    @list += items
  end

  def get_items
    @list
  end

  def add_item(item)
    @list += [item]
  end

  def delete_item(item)
    @list -= [item]
  end

  def get_item(n)
    @list[n]
  end

end