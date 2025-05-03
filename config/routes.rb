Rails.application.routes.draw do
  
  get("/", { :controller => "zebra", :action => "home"})  

  get("/dice/2/6", { :controller => "zebra", :action => "first"})  
  
  get("/dice/2/10", { :controller => "zebra", :action => "second"})  
  
  get("/dice/1/20", { :controller => "zebra", :action => "third"})  
  
  get("/dice/5/4", { :controller => "zebra", :action => "fourth"})  
  
  get("/dice/:number_of_dice/:how_many_sides", { :controller => "zebra", :action => "flexible"})
end
