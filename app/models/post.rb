class Post < ApplicationRecord
    has_many :replies, dependent: :destroy
    validates :title, presence: true, length: { minimum: 5}
    validates :category, presence: true
    CATEGORIES = ['General','Architecture','Art','Biology','Chemistry','Computer Science','Math']
end
