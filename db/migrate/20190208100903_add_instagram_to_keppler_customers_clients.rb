class AddInstagramToKepplerCustomersClients < ActiveRecord::Migration[5.2]
  def change
    add_column :keppler_customers_clients, :instagram, :string
  end
end
