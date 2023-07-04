class Fiction < ApplicationRecord

	    has_many :likes, dependent: :destroy
    has_many :lovers, through: :likes, source: :user
end
