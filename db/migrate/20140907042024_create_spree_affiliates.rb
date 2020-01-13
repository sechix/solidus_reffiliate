class CreateSpreeAffiliates < ActiveRecord::Migration::Migration[5.2]
  def change
    create_table :spree_affiliates do |t|
      t.string :name
      t.string :path
      t.string :partial
    end
  end
end
