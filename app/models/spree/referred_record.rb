module Spree
  class ReferredRecord < Spree::Base
    belongs_to :referral, optional: true
    belongs_to :user, class_name: Spree::UserClassHandle.new
    belongs_to :affiliate, optional: true

    belongs_to :store_credit, class_name: 'Spree::StoreCredit', optional: true

    validates_presence_of :user

    def redeem(currency)
      create_store_credit!({
                               amount: 5,
                               currency: currency,
                               memo: memo,
                               user: self.referral.user,
                               created_by: self.referral.user,
                               action_originator: self,
                               category: store_credit_category
                           })
    end

    def memo
      [I18n.t('spree.memo_credit'), self.user.email]
    end

    def store_credit_category
      Spree::StoreCreditCategory.where(name: Spree::StoreCreditCategory::GIFT_CARD_CATEGORY_NAME).first
    end


  end
end
