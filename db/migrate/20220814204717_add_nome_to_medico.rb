class AddNomeToMedico < ActiveRecord::Migration[7.0]
  def change
    add_column :medicos, :nome, :string
  end
end
