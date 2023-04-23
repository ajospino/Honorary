class Member < ApplicationRecord
    belongs_to :book
    validates :name, presence: true, uniqueness: true
    validates :year, presence: true
end