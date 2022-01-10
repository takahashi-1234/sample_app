class Review < ApplicationRecord
  attachment :image
  belongs_to :customer
end
