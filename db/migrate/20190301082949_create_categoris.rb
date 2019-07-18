class CreateCategoris < ActiveRecord::Migration[5.2]
  def change
    create_table :categoris do |t|
      t.string :categori_name

      t.timestamps
    end
  end
end
