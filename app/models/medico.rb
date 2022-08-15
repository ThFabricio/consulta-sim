class Medico < ApplicationRecord

  has_many :consults, dependent: :destroy
end
