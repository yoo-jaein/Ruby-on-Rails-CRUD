class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, presence: true
    
    has_many :replies
    belongs_to :user
    
    has_many :likes
    has_many :liked_user, through: :likes, source: :user
end
