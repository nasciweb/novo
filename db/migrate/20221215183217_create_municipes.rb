class CreateMunicipes < ActiveRecord::Migration[7.0]
  def change
    create_table :municipes do |t|
      t.string :nome
      t.string :cpf
      t.string :cns
      t.string :emailmunicipe
      t.date :data
      t.date :nascimento
      t.string :telefone
      t.string :foto
      t.string :status

      t.timestamps
    end
  end
end
