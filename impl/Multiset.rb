class Multiset
  def initialize(n)
    @set = [n]
  end

  def contains(n)
    return @set.include?(n)
  end

  def add(n)
    @set.insert(0, n)
  end

  def remove(n)
    if self.contains(n)
      for i in 0..@set.length
        if @set[i] == n
          @set.delete_at(i)
          break
        end
      end
    end
  end
end
