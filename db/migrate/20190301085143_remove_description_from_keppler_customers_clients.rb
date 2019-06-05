class RemoveDescriptionFromKepplerCustomersClients < ActiveRecord::Migration[5.2]
  def change
    remove_column :keppler_customers_clients, :description, :string
  end
end
