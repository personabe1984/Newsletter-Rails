class CreateMagazines < ActiveRecord::Migration[5.2]
  def change
    create_table :magazines do |t|
      t.string :name
      t.string :category

      t.timestamps
    end
  end
end
