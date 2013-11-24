class User < ActiveRecord::Base

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.nickname = auth["info"]["nickname"]
      user.email = auth["info"]["email"]
      user.image_gravatar = auth["info"]["image"]
    end
  end   
end


# {"provider"=>"github",
#  "uid"=>"819213",
#  "info"=>
#   {"nickname"=>"andersr",
#    "email"=>"andersr@gmail.com",
#    "name"=>"Anders Ramsay",
#    "image"=>
#     "https://0.gravatar.com/avatar/cb7a4cc2cff3810e8cc4bbf4384e3f48?d=https%3A%2F%2Fidenticons.github.com%2F
#    "urls"=>
#     {"GitHub"=>"https://github.com/andersr",
#      "Blog"=>"http://www.andersramsay.com"}},
#  "credentials"=>
#   {"token"=>"16a61e6be880e51026d9d1dd090bd21d52b21d1c", "expires"=>false},
#  "extra"=>
#   {"raw_info"=>
#     {"login"=>"andersr",
#      "id"=>819213,
#      "avatar_url"=>
#       "https://0.gravatar.com/avatar/cb7a4cc2cff3810e8cc4bbf4384e3f48?d=https%3A%2F%2Fidenticons.github.com%
#      "gravatar_id"=>"cb7a4cc2cff3810e8cc4bbf4384e3f48",
#      "url"=>"https://api.github.com/users/andersr",
#      "html_url"=>"https://github.com/andersr",
#      "followers_url"=>"https://api.github.com/users/andersr/followers",
