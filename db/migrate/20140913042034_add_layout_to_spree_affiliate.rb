class AddLayoutToSpreeAffiliate < ActiveRecord::Migration::Migration[5.2]
  def change
    add_column :spree_affiliates, :layout, :string
  end
end
