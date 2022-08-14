class CreateEnderecos < ActiveRecord::Migration[7.0]
  def change
    create_table :enderecos do |t|
      t.string :cep
      t.string :cidade
      t.string :bairro
      t.string :logradoro
      t.string :complemento

      t.timestamps
    end
  end
end
