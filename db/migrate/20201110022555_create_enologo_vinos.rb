class CreateEnologoVinos < ActiveRecord::Migration[5.2]
  def change
    create_table :enologo_vinos do |t|
      t.integer :nota
      t.references :enologo, foreign_key: true
      t.references :vino, foreign_key: true

      t.timestamps
    end
  end
end
