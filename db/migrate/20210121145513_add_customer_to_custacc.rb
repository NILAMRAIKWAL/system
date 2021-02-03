class AddCustomerToCustacc < ActiveRecord::Migration[5.2]
  def change
    add_reference :custaccs, :customer
  end
end
