class Post < ApplicationRecord
    has_many :replies, dependent: :destroy
    CATEGORIES = ['General','Architecture','Art','Biology','Chemistry','Computer Science','Math']
end
