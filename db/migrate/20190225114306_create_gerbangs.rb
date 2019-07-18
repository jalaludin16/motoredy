class CreateGerbangs < ActiveRecord::Migration[5.2]
  def change
    create_table :gerbangs do |t|
      t.string :nama_gerbang
      
      t.timestamps
    end
  end
end
