class CreateTurntables < ActiveRecord::Migration[7.0]
  def change
    create_table :turntables do |t|
      t.string :model
      t.string :manufacturer
      t.decimal :price
      t.string :main_image

      t.timestamps
    end
  end
end
