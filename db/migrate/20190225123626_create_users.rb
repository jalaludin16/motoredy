class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :ndk
      t.string :name
      t.string :email
      t.integer :password
      t.integer :level
      t.integer :jabatan_id
      t.integer :gerbang_id
      t.integer :departement_id

      t.timestamps
    end
  end
end
