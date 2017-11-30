class Vecino < ApplicationRecord
  belongs_to :user
  validates_presence_of :name
  validates_presence_of :street
  validates_presence_of :house_number
  validates_presence_of :zip_code,
                        format: { with: /\d{5}/}
  validates :phone, presence: true,
            format: { with: /\d{10}/}
  #attr_accessor :name, :street, :house_number, :zip_code; :phone
end
