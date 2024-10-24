Rails.application.routes.draw do
  get("/", {:controller => "math", :action => "square"})
  get("/square/new", {:controller => "math", :action => "square"})
  get("/square/results", {:controller => "math", :action => "squareresults"})

  get("/square_root/new", {:controller => "math", :action => "root"})
  get("/square_root/results", {:controller => "math", :action => "rootresults"})

  get("/payment/new", {:controller => "math", :action => "payment"})
  get("/payment/results", {:controller => "math", :action => "paymentresults"})

  get("/random/new", {:controller => "math", :action => "random"})
  get("/random/results", {:controller => "math", :action => "randomresults"})
end
