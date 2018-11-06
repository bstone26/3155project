class Post < ApplicationRecord
    has_many :replies, dependent: :delete_all
    CATEGORIES = ['general', 'computer_science']
end
