class Paciente < ApplicationRecord

  has_one :endereco, dependent: :destroy
  has_many :consults, dependent:  :destroy

  accepts_nested_attributes_for :endereco
end
