class Vecino < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :address
  validates :phone, presence: true,
            length: { minimum: 8}
end
