class AddDescriptionToKepplerCustomersClients < ActiveRecord::Migration[5.2]
  def change
    add_column :keppler_customers_clients, :description, :string
  end
end
