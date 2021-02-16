class Category < ApplicationRecord
  belongs_to :area
  has_many :requests, dependent: :nullify
end
