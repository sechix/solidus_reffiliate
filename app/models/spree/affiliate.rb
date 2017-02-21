module Spree
  class Affiliate < Spree::Base
    has_many :referred_records
    has_one :image, as: :viewable, dependent: :destroy, class_name: "Spree::Image"

    validates_presence_of :name, :path

    def image=(file)
      transaction do
        self.image.destroy! if self.image
        new_image = create_image(attachment: file) if file.is_a?(ActionDispatch::Http::UploadedFile)
        super(new_image)
      end
    end

    def referred_users
      referred_records.includes(:user).collect(&:user).compact
    end

    def referred_orders
      referred_records.includes({:user => :orders}).collect{|u| u.user&.orders }.flatten.compact
    end

    def referred_count
      referred_records.count
    end

    def get_layout
      return false if layout == 'false'
      layout
    end

    private

      def self.layout_options
        [
          ["No Layout", "false"],
          ["Spree Application Layout", 'spree/layouts/spree_application'],
          ["Custom Layout Path", nil]
        ]
      end

      def self.lookup_for_partial lookup_context, partial
        lookup_context.template_exists?(partial, ["spree/affiliates"], false)
      end

  end
end
