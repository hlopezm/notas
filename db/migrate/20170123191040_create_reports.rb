class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :nombre
      t.integer :category_id
      t.integer :local_id
      t.integer :federal_id
      t.string :pdte_mpal
      t.date :renovacion_cdm
      t.text :situacion_mpio
      t.text :situacion_cdm
      t.text :temas_reunion
      t.text :observaciones

      t.timestamps
    end
  end
end
