class Endereco < ApplicationRecord

  has_one :paciente

  validates :cep, presence: true, length: {is: 8}, numericality: { only_integer: true }
  validates :cidade,  presence: true, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")},  length: { minimum: 2 }
  validates :bairro, presence: true, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")},  length: { minimum: 2 }
  validates :logradoro, presence: true, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")},  length: { minimum: 2 }
  validates :complemento, presence: true, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")},  length: { minimum: 2 }

end
