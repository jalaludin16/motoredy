class CreateDepatements < ActiveRecord::Migration[5.2]
  def change
    create_table :departements do |t|
      t.string :nama_departement
      
      t.timestamps
    end
  end
end
