class MathController < ApplicationController
  def square
    render({:template => "math/square"})
  end
  def squareresults
    @number = params.fetch("number")
    @square = (@number.to_f ** 2).to_f
    render({:template => "math/squareresults"})
  end
  def root
    render({:template => "math/root"})
  end
  def rootresults
    @number = params.fetch("user_number")
    @root = (@number.to_f ** 0.5).to_f
    render({:template => "math/rootresults"})
  end
  def payment
    render({:template => "math/payment"})
  end
  def paymentresults
    @aprVal = params.fetch("user_apr")
    @apr = @aprVal.to_i.to_fs(:percentage, {:precision => 4})
    @numYrs = params.fetch("user_years")
    @princVal = params.fetch("user_pv")
    @principal = @princVal.to_i.to_fs(:currency)

    r = @aprVal.to_f / 1200
    pv = @princVal.to_f
    n = @numYrs.to_i * 12
    
    num = r*pv
    denom = (1-((1+r) ** (-n)))
    pay = num / denom

    @payment = pay.to_fs(:currency)
    render({:template => "math/paymentresults"})
  end

  def random
    render({:template => "math/random"})
  end
  def randomresults
    @min = params.fetch("user_min")
    @max = params.fetch("user_max")
    @random = rand(@min.to_f .. @max.to_f)
    render({:template => "math/randomresults"})
  end
end
