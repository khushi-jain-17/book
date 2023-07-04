class User < ApplicationRecord

	 has_many :likes, dependent: :destroy
    has_many :fav_fictions, through: :likes, source: :fiction
end
