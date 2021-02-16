class Request < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :area, optional: true
  belongs_to :user, optional: true
  belongs_to :currency, optional: true
  belongs_to :convertible_unit, optional: true
  has_many :views, as: :viewable, dependent: :destroy
  has_many :alerts, dependent: :destroy
end
