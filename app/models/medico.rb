class Medico < ApplicationRecord

  has_many :consults, dependent: :destroy

  validates :email, presence: true, length: {minimum: 11}, uniqueness: true
  validates :cpf, presence: true, numericality: { only_integer: true }, uniqueness: true, length: {is: 11}, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")}
  validates :nome, presence: true, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")}, length: { minimum: 2 }
  validates :crm, presence: true, numericality: { only_integer: true }, uniqueness: true, length: {is: 6}
  validates :especialidade, presence: true, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")},  length: { minimum: 2 }
end
