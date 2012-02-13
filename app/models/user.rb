class User < ActiveRecord::Base
  recommends :restaurants

  def self.create_with_omniauth(auth)
    create! do | user |
      user.provider = auth["provider"].to_s
      user.uid = auth["uid"].to_s
      user.name = auth["info"]["name"].to_s
    end
  end
end
