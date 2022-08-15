class AddPacienteToConsult < ActiveRecord::Migration[7.0]
  def change
    add_reference :consults, :paciente, null: false, foreign_key: true
  end
end
