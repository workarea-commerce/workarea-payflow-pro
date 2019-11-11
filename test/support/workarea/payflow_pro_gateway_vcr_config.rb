module Workarea
  module PayflowProGatewayVCRConfig
    def self.included(test)
      super
      test.setup :setup_gateway
      test.teardown :reset_gateway
    end

    def setup_gateway
      @_old_gateway = Workarea.config.gateways.credit_card
      Workarea.config.gateways.credit_card = ActiveMerchant::Billing::PayflowGateway.new(
        user: 'apiuser',
        login: 'wlplugins',
        password: 'j{C[hhsQ9h',
        test: true
      )
    end

    def reset_gateway
      Workarea.config.gateways.credit_card = @_old_gateway
    end
  end
end
