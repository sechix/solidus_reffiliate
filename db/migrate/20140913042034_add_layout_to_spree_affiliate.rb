class AddLayoutToSpreeAffiliate < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_affiliates, :layout, :string
  end
end
