class Request < ApplicationRecord
    validates :title, presence: true
    validates :budget, presence: true
    validates :description, presence: true
    
    belongs_to :user
    has_many :requests
end
