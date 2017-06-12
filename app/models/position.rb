class Position < ApplicationRecord
  belongs_to :applicant
  has_many :qualifications
end
