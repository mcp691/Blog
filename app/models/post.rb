class Post < ApplicationRecord

  belongs_to :user, optional: true
  validates :content, presence: true, allow_blank: false
  validates :title, presence: true, allow_blank: false

  def self.search(search_term)
    if Rails.env != "production"
      Post.where("title || content LIKE ?", "%#{search_term}%")
    else
      Post.where("title || content iLIKE ?", "%#{search_term}%")
    end
  end
end
