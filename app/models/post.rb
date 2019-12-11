class Post < ApplicationRecord
  belongs_to :user

  def gravatar
    "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(message)}"
  end
end
