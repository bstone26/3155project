class Post < ApplicationRecord
    has_many :replies, dependent: :delete_all
    CATEGORIES = ['General','Architecture','Art','Biology','Chemistry','Computer Science','Math']
end
