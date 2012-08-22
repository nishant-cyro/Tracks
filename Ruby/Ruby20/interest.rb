class Interest
  def initialize(p, t)
    @p = p
    @t = t
    @r = 10
  end

  def simpleInterest
    (@p * @r * @t) / 100
  end

  def compoundInterset
    (@p * ((1 + (@r/100.0)) ** @t)) - @p
  end

  def diffInInterest
    simpleInterest - compoundInterset
  end

end