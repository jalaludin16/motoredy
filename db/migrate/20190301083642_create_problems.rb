class CreateProblems < ActiveRecord::Migration[5.2]
  def change
    create_table :problems do |t|
      t.text :deskripsi
      t.integer :user_id
      t.integer :categori_id
      t.integer :priority_id

      t.timestamps
    end
  end
end
