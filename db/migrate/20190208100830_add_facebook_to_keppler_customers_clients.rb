class AddFacebookToKepplerCustomersClients < ActiveRecord::Migration[5.2]
  def change
    add_column :keppler_customers_clients, :facebook, :string
  end
end
