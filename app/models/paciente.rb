class Paciente < ApplicationRecord

  has_one :endereco, dependent: :destroy
  has_many :consults, dependent:  :destroy

  accepts_nested_attributes_for :endereco, allow_destroy: true

  validates :nome, presence: true, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'")}, length: { minimum: 2 }
  validates :data, presence: true, presence: { message: "Data de nascimento é obrigatória!" }, comparison: { less_than: DateTime.now, message: "Data de nascimento inválida" }
  validates :cpf, presence: true, numericality: { only_integer: true }, uniqueness: true, length: { is: 11 }, exclusion: { in: %w(!@#$%¨&*()_+=[{]};:?/'") }
  validates :email, presence: true, length: { minimum: 11 }, uniqueness: true
end
