class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :delivery_date
      t.integer :person_id
      t.integer :magazine_id

      t.timestamps
    end
  end
end
