class Kiln < ApplicationRecord
  belongs_to :workshop
  has_and_belongs_to_many :drying_methods
end
