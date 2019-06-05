class AddWebToKepplerCustomersClients < ActiveRecord::Migration[5.2]
  def change
    add_column :keppler_customers_clients, :web, :string
  end
end
