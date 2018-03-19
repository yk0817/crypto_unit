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
      it { expect(3.satoshi).to eq 0.000_000_1.to_d * 3.to_d }
    end

    context "ETH UNIT" do
      it { expect(0.tether).to eq 0.000_000_000_001.to_d * 0 }
      it { expect(3.gether).to eq 0.000_000_001.to_d * 3.to_d }
      it { expect(10.mether).to eq 0.000_001.to_d * 10.to_d }
      it { expect(-8.kether).to eq 0.001.to_d * -8.to_d }
      it { expect(1000000.ether).to eq 1.to_d * 1000000.to_d }
      it { expect(0.0101.finney).to eq 1_000.to_d * 0.0101.to_d }
      it { expect(332222222.szabo).to eq 1_000_000.to_d * 332222222.to_d }
      it { expect(443.322.gwei).to eq 1_000_000_000.to_d * 443.322.to_d }
      it { expect(322.232.mwei).to eq 1_000_000_000_000.to_d * 322.232.to_d }
      it { expect(1121.kwei).to eq 1_000_000_000_000_000.to_d * 1121.to_d }
      it { expect(999999999999999.wei).to eq 1_000_000_000_000_000_000.to_d * 999999999999999.to_d }
    end

    context "XRP UNIT" do
      it { expect(3.drop).to eq 0.000_001.to_d * 3.to_d }
    end

    context "LTC UNIT" do
      it { expect(3.lites).to eq 0.001.to_d * 3.to_d }
      it { expect(-1.photones).to eq 0.000_001.to_d * -1.to_d }
      it { expect(99999.litoshis).to eq 0.00_000_001.to_d * 99999.to_d }

    end

    context "XMR UNIT" do
      it { expect(-1.piconero).to eq 0.000_000_000_001.to_d * -1.to_d }
      it { expect(3.nanonero).to eq 0.000_000_001.to_d * 3.to_d }
      it { expect(111111111111111.micronero).to eq 0.000_001.to_d * 111111111111111.to_d }
      it { expect(10232323324.4334.millinero).to eq 0.001.to_d * 10232323324.4334.to_d }
      it { expect(9999999999999999911111.centinero).to eq 0.01.to_d * 9999999999999999911111.to_d }
      it { expect(-999999999999999999.decinero).to eq 0.1.to_d * -999999999999999999.to_d }
      it { expect(-0.monero).to eq 1.to_d * -0.to_d }
    end

    context "XEM UNIT" do
      it { expect(3.µxem).to eq 0.000_001.to_d * 3.to_d }
      it { expect(0.000000000000000001.mxem).to eq 0.000000000000000001.to_d * 0.001.to_d }
    end
  end
end
