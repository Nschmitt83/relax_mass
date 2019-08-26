class CreateMassages < ActiveRecord::Migration[5.2]
  def change
    create_table :massages do |t|
      t.string :massage_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
