class CreateKilns < ActiveRecord::Migration[6.1]
  def change
    create_table :kilns do |t|
      t.string :name
      t.references :workshop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
