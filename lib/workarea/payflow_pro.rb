require 'workarea'
require 'workarea/storefront'
require 'workarea/admin'

require 'workarea/payflow_pro/engine'
require 'workarea/payflow_pro/version'

require 'active_merchant/billing/bogus_payflow_pro_gateway'

module Workarea
  module PayflowPro
    # Credentials for PayFlowPro from Rails secrets.
    #
    # @return [Hash]
    def self.credentials
      return {} unless Rails.application.secrets.payflow_pro.present?
      Rails.application.secrets.payflow_pro.symbolize_keys
    end

    # Conditionally use the real gateway when secrets are present.
    # Otherwise, use the bogus gateway.
    #
    # @return [ActiveMerchant::Billing::Gateway]
    def self.gateway
      Workarea.config.gateways.credit_card
    end

    def self.gateway=(gateway)
      Workarea.config.gateways.credit_card = gateway
    end

    def self.auto_initialize_gateway
      if credentials.present?
        if ENV['HTTP_PROXY'].present?
          uri = URI.parse(ENV['HTTP_PROXY'])
          ActiveMerchant::Billing::PayflowGateway.proxy_address = uri.host
          ActiveMerchant::Billing::PayflowGateway.proxy_port = uri.port
        end

        self.gateway = ActiveMerchant::Billing::PayflowGateway.new credentials
      else
        self.gateway = ActiveMerchant::Billing::BogusPayflowProGateway.new
      end
    end
  end
end
