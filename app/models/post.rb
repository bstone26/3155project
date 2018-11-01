class Post < ApplicationRecord
    has_many :replies, dependent: :delete_all
end
