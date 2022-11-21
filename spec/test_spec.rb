class Wallet
  attr_accessor :worth

  def initialize(money)
    @worth = money
  end
end

# local let
describe Wallet do
  context 'let vs before' do
    let(:wallet) { Wallet.new(2000) }
    it 'evalutes the worth' do
      expect(wallet.worth).to eq 2000
    end
  end
end

# #global let
# describe Wallet do
#     let(:wallet){ Wallet.new(2000) }
#     context 'let vs before' do
#         it 'evalutes the worth' do
#             expect(wallet.worth).to eq 2000
#         end
#     end
# end

# describe Wallet do
#     before{ $wallet = Wallet.new(2000) }
#     context 'let vs before' do
#         it 'evalutes the worth' do
#             expect($wallet.worth).to eq 2000
#         end
#     end
# end
