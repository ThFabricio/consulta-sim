class AddMedicoToConsult < ActiveRecord::Migration[7.0]
  def change
    add_reference :consults, :medico, null: false, foreign_key: true
  end
end
