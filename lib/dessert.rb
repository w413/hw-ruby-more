class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  def name
    @name
  end
  
  def name=(n)
    @name = n
  end
  
  def calories
    @calories
  end
  
  def calories=(c)
    @calories = c
  end
  
  def healthy?
    unless @calories > 200
      return true
    else
      return false
    end
  end
  
  def delicious?
    true
  end

end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    @name = "#{@flavor} jelly bean"
    @calories = 5
  end
  
  def flavor
    @flavor
  end
  
  def flavor=(f)
    @flavor = f
  end
  
  def delicious?
    unless @flavor.downcase == 'licorice'
      return true
    else
      return false
    end
  end
end
