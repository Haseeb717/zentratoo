class Alert < ApplicationRecord
  belongs_to :request
  belongs_to :area
  belongs_to :user
end
