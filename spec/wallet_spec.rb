
# require the spec_helper
require 'spec_helper'
# require the class being tested
require './lib/wallet'

# setups up the RSpec describe block; can write Wallet or "Wallet"
RSpec.describe Wallet do
  let(:the_let_wallet) { Wallet.new(0) }

  before(:each) do
    @the_before_wallet = Wallet.new(0)
  end

  # just a basic "does it exist" test
  describe 'initialize' do
    it 'exists' do
      expect(the_let_wallet).to be_an_instance_of Wallet
      expect(@the_before_wallet).to be_an_instance_of Wallet
    end
  end

  # need to be able to add a value to the instance variable
  describe '#add_a_dollar' do
    it 'increases the @dollar_amount of @the_before_wallet' do
      @the_before_wallet.add_a_dollar(1)
      expect(@the_before_wallet.dollar_amount).to eq(1)
    end

    it 'increases the @dollar_amount of the_let_wallet' do
      the_let_wallet.add_a_dollar(1)
      expect(the_let_wallet.dollar_amount).to eq(1)
    end

    # I was expecting @the_before_wallet to accumulate the dollar, but it did not
    it 'increases the @dollar_amount of @the_before_wallet' do
      @the_before_wallet.add_a_dollar(1)
      expect(@the_before_wallet.dollar_amount).to eq(1)
    end

    # this is a pointless test; you can make the test pending by putting an x in front of 'it'
    xit 'has some behaviour' do
      @the_before_wallet.add_a_dollar(1)
      expect(@the_before_wallet.dollar_amount).to eq(1)
    end

    it 'increases the @dollar_amount of the_let_wallet' do
      the_let_wallet.add_a_dollar(1)
      expect(the_let_wallet.dollar_amount).to eq(1)
    end
  end
end

# Ultimately, i think where I've experienced nuance has been in the scope of things; that is, when I need to reuse the things defined in the before or the let, and then test that state; things start to get a little confusing; so I believe I've defaulted to using let when writing in just Ruby, and using before when writing in Rails. Really interesting! But don't stop learning! Just decide on one for now, and keep going!