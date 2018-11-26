class Post < ApplicationRecord
    has_many :replies, dependent: :delete_all
    CATEGORIES = ['General', 'Computer Science','Math']
end
