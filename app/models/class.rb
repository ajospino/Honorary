class Class < ApplicationRecord
    has_many :member , dependent: :destroy
end