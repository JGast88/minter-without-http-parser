# frozen_string_literal: true

module Minter
  class CreateMultisiqAddressTx < Transaction
    SIGN_METHOD = :SignCreateMultisiqAddressTransaction
    attr_accessor :addresses, :threshold, :nonce, :chain_id, :gas_coin, :gas_price

    def initialize(threshold:, nonce:, chain_id:, gas_coin:, gas_price:)
      @threshold = threshold
      @nonce = nonce
      @chain_id = chain_id
      @gas_coin = gas_coin
      @gas_price = gas_price
      @addresses = []
    end

    def add_address(address:, weight:)
      @addresses << { Address: address, Weight: weight }
    end

    def to_params
      {
        Threshold: threshold,
        Nonce: nonce,
        ChainId: chain_id,
        GasCoin: gas_coin,
        GasPrice: gas_price,
        Addresses: addresses
      }
    end

    def sign(private_key)
      params = to_params
      params[:PrivateKey] = private_key

      result = JSON.parse(Minter::TransactionFfi.send(self.class::SIGN_METHOD, params.to_json))
      if result["success"]
        [SignedTx.new(result["tx_hash"]), result["multisiq_address"]]
      else
        raise TransactionError, result["error"]
      end
    end
  end
end
