module ActiveMerchant
  module Billing
    class BogusPayflowProGateway < BogusGateway
      def initialize(options = {})
        #noop
      end

      def authorize(money, paysource, options = {})
        money = amount(money)
        case normalize(paysource)
        when /1$/
          Response.new(true, SUCCESS_MESSAGE, { authorized_amount: money, pn_ref: '1' }, test: true, authorization: AUTHORIZATION)
        when /2$/
          Response.new(false, FAILURE_MESSAGE, { authorized_amount: money, error: FAILURE_MESSAGE }, test: true, error_code: STANDARD_ERROR_CODE[:processing_error])
        else
          raise Error, error_message(paysource)
        end
      end

      def purchase(money, paysource, options = {})
        money = amount(money)
        case normalize(paysource)
        when /1$/, AUTHORIZATION
          Response.new(true, SUCCESS_MESSAGE, { paid_amount: money, pn_ref: '1' }, test: true, authorization: AUTHORIZATION)
        when /2$/
          Response.new(false, FAILURE_MESSAGE, { paid_amount: money, error: FAILURE_MESSAGE }, test: true, error_code: STANDARD_ERROR_CODE[:processing_error])
        else
          raise Error, error_message(paysource)
        end
      end

      def verify(paysource)
        case normalize(paysource)
        when /1$/
          Response.new(true, SUCCESS_MESSAGE, { pn_ref: '1' }, test: true, authorization: AUTHORIZATION)
        when /2$/
          Response.new(false, FAILURE_MESSAGE, { pn_ref: nil, error: FAILURE_MESSAGE }, test: true, error_code: STANDARD_ERROR_CODE[:processing_error])
        else
          raise Error, error_message(paysource)
        end
      end
    end
  end
end
