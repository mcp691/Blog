class Post < ApplicationRecord
  def self.search(search_term)
    if Rails.env != "production"
      Post.where("title || content LIKE ?", "%#{search_term}%")
    else
      Post.where("title || content iLIKE ?", "%#{search_term}%")
    end
  end
end
