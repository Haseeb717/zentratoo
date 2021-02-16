class ConvertibleUnit < ApplicationRecord
	has_many :requests, dependent: :nullify
end
