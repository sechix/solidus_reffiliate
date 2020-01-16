module Spree
  class ReferredRecord < Spree::Base
    belongs_to :referral, optional: true
    belongs_to :user, class_name: Spree::UserClassHandle.new
    belongs_to :affiliate, optional: true

    validates_presence_of :user
  end
end
