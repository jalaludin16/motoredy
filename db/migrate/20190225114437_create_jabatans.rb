class CreateJabatans < ActiveRecord::Migration[5.2]
  def change
    create_table :jabatans do |t|
      t.string :nama_jabatan
      
      t.timestamps
    end
  end
end
