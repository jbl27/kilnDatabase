class Workshop < ApplicationRecord
  belongs_to :user
  has_many :kilns
end
