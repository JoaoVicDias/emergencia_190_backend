class Emergency < ApplicationRecord
  belongs_to :emergency_type
  belongs_to :user
  belongs_to :status
end
