# frozen_string_literal: true

module Minter
  module Api
    module MaxGasResource
      def max_gas
        path = "/max_gas"
        get(path)
      end
    end
  end
end
