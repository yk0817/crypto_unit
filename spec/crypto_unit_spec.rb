RSpec.describe CryptoUnit do
  describe "gem" do
    context "gem version must display" do
      it "has a version number" do
        expect(CryptoUnit::VERSION).not_to be nil
      end
    end
  end
  
  describe "CryptcurrencyUnit" do
    context "BTC UNIT" do
      it { expect(3.satoshi).to eq 0.000_000_1 * 3 }
    end
    
    context "ETH UNIT" do
      it { expect(0.tether).to eq 0.000_000_000_001 * 0 }
      it { expect(3.gether).to eq 0.000_000_001 * 3 }
      it { expect(10.mether).to eq 0.000_001 * 10 }
      it { expect(-8.kether).to eq 0.001 * -8 }
      it { expect(1000000.ether).to eq 1 * 1000000 }
      it { expect(0.0101.finney).to eq 1_000 * 0.0101 }
      it { expect(332222222.szabo).to eq 1_000_000 * 332222222 }
      it { expect(443.322.gwei).to eq 1_000_000_000 * 443.322 }
      it { expect(322.232.mwei).to eq 1_000_000_000_000 * 322.232 }
      it { expect(1121.kwei).to eq 1_000_000_000_000_000 * 1121 }
      it { expect(999999999999999.wei).to eq 1_000_000_000_000_000_000.to_f * 999999999999999.to_f }
    end
    
    context "XRP UNIT" do
      it { expect(3.drop).to eq 0.000_001 * 3 }
    end
    
    context "LTC UNIT" do
      it { expect(3.lites).to eq 0.001 * 3 }
      it { expect(-1.photones).to eq 0.000_001 * -1 }
      it { expect(99999.litoshis).to eq 0.00_000_001 * 99999 }

    end
    
    context "XMR UNIT" do
      it { expect(-1.piconero).to eq 0.000_000_000_001 * -1 }
      it { expect(3.nanonero).to eq 0.000_000_001 * 3 }
      it { expect(111111111111111.micronero).to eq 0.000_001 * 111111111111111 }
      it { expect(10232323324.4334.millinero).to eq 0.001 * 10232323324.4334 }
      it { expect(9999999999999999911111.centinero).to eq 0.01 * 9999999999999999911111 }
      it { expect(-999999999999999999.decinero).to eq 0.1 * -999999999999999999 }
      it { expect(-0.monero).to eq 1 * -0 }
    end
    
    context "XEM UNIT" do
      it { expect(3.µxem).to eq 0.000_001 * 3 }
      it { expect(0.000000000000000001.mxem).to eq 0.000000000000000001 * 0.001 }
    end
  end
end