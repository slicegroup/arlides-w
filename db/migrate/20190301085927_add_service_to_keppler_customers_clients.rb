class AddServiceToKepplerCustomersClients < ActiveRecord::Migration[5.2]
  def change
    add_column :keppler_customers_clients, :service, :text
  end
end
