defmodule School do
  # protects a particular field in the struct
  @derive {Inspect, only: [:name]}
   defstruct name: nil , roles: [:manager, :developer] 
 
def module do
  
  
end




end