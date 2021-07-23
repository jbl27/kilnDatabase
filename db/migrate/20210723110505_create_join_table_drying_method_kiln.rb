class CreateJoinTableDryingMethodKiln < ActiveRecord::Migration[6.1]
  def change
    create_join_table :drying_methods, :kilns do |t|
      # t.index [:drying_method_id, :kiln_id]
      # t.index [:kiln_id, :drying_method_id]
    end
  end
end
