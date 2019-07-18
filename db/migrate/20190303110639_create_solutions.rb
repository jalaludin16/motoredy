class CreateSolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :solutions do |t|
      t.text :solusi
      t.integer :user_id
      t.integer :problem_id

      t.timestamps
    end
  end
end
