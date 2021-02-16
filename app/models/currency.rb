class Currency < ApplicationRecord
	has_many :requests, dependent: :nullify
end
