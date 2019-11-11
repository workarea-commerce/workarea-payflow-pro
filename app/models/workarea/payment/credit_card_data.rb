module Workarea
  class Payment
    module CreditCardData
      def transaction_args
        {
          order_id: tender.payment.id,
          billing_address: billing_address
        }
      end

      def billing_address
        {
          name:       "#{address.first_name} #{address.last_name}",
          company:    address.company,
          address1:   address.street,
          city:       address.city,
          state:      address.region,
          country:    address.country.try(:alpha2),
          zip:        address.postal_code,
          phone:      nil
        }
      end

      def payment_source
        tender.token.presence || tender.to_active_merchant
      end
    end
  end
end
