class User < ActiveRecord::Base
  attr_accessible :name, :image, :oauth_expires_at, :oauth_token, :provider, :uid

  has_and_belongs_to_many :lunches

# end


# class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end

class Image < ActiveRecord::Base
  def user_image_path
    "http://graph.facebook.com/#{uid}/picture?type=square"
  end
end