class AddIndexToSpreeReferrals < ActiveRecord::Migration::Migration[5.2]
  def change
    add_index :spree_referrals, :user_id
  end
end
