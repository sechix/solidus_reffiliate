module Spree
  module Admin
    class ReferredRecordsController < Spree::Admin::ResourceController
      def destroy
        record = Spree::ReferredRecord.find(params.require(:id))
        record.destroy!
        redirect_to :back
      end
    end
  end
end
