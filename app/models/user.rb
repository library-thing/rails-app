class User < ActiveRecord::Base

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.login = auth["info"]["nickname"]
      # user.gravatar_url = auth["info"]["image"]
    end
  end   

end
