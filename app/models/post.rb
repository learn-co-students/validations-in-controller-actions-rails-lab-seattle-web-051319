class Post < ActiveRecord::Base
    validates :title, presence: true, length: {minimum: 3}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validates :content, length: {minimum: 100}
end
