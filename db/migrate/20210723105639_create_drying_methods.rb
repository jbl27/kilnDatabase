class CreateDryingMethods < ActiveRecord::Migration[6.1]
  def change
    create_table :drying_methods do |t|
      t.string :name

      t.timestamps
    end
  end
end
