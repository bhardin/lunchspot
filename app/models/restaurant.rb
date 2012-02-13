class Restaurant < ActiveRecord::Base
  def like
    puts self.name
  end  
end
