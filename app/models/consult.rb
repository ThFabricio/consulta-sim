class Consult < ApplicationRecord

  has_many :medicos
  has_many :pacientes

  validates :paciente_id, presence: true, presence: {message: "Paciente é obrigatorio"}
  validates :medico_id, presence: true, presence: {message: "Paciente é obrigatorio"}
  validates :data, presence: true, presence: { message: "Data da consulta é obrigatória!" }, comparison: { greater_than_or_equal_to: DateTime.now, message: "Data de consulta é inválida" }
  validates :horario, presence: true,  presence: { message: "Hora da consulta é obrigatória!" }
end
