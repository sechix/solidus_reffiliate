class CreateSpreeReferredRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_referred_records do |t|
      t.integer :user_id
      t.integer :referral_id
      t.integer :affiliate_id
    end
  end
end
