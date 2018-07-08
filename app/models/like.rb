class Like < ApplicationRecord
	belongs_to :model
	belongs_to :post
	belongs_to :comment
end
