Spree::PermittedAttributes.user_attributes.push :referral_code, :affiliate_code
config = Rails.application.config
config.after_initialize do
  config.spree.promotions.rules << Spree::Promotion::Rules::ReferredPromotionRule
  config.spree.promotions.rules << Spree::Promotion::Rules::AffiliatedPromotionRule
end


SolidusReffiliate::Config[:credit_for_referal] = 5