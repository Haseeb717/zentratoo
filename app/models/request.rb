class Request < ApplicationRecord
  belongs_to :category
  belongs_to :area
  belongs_to :user
  belongs_to :currency
  belongs_to :convertible_unit
  has_many :views, as: :viewable
end
