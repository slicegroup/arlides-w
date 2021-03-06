# This migration comes from keppler_frontend (originally 20180827120734)
class CreateKepplerFrontendCallbackFunctions < ActiveRecord::Migration[5.2]
  def change
    create_table :keppler_frontend_callback_functions do |t|
      t.string :name
      t.string :description
      t.integer :position
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :keppler_frontend_callback_functions, :deleted_at
  end
end
