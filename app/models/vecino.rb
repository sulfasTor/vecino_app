# coding: utf-8
class Vecino < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :street
  validates_presence_of :house_number
  validates_presence_of :zip_code
  validates :phone, presence: true,
            format: { with: /\d{10}/}
end
