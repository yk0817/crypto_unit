require "crypto_unit/version"
require "yaml"
require 'bigdecimal'
require 'bigdecimal/util'


module CryptoUnit
  ENCRYPT_YAML_PATH = File.dirname(File.expand_path(__FILE__)) + "/crypto_unit/denomination.yml"
  ENCRYPT_YAML_DATA = YAML.load_file(ENCRYPT_YAML_PATH)

  # BTC
  def satoshi
    self.to_d * ENCRYPT_YAML_DATA["BTC"]["#{__method__.downcase}"].to_d
  end

  # ETH
  def tether
    self.to_d * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_d
  end

  def gether
    self.to_d * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_d
  end

  def mether
    self.to_d * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_d
  end

  def kether
    self.to_d * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_d
  end

  def ether
    self.to_d * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_d
  end

  def finney
    self.to_d * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_d
  end

  def szabo
    self.to_d * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_d
  end

  def gwei
    self.to_d * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_d
  end

  def mwei
    self.to_d * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_d
  end

  def kwei
    self.to_d * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_d
  end

  def wei
    self.to_d * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_d
  end

  # XRP
  def drop
    self.to_d * ENCRYPT_YAML_DATA["XRP"]["#{__method__.downcase}"].to_d
  end

  # LTC
  def lites
    self.to_d * ENCRYPT_YAML_DATA["LTC"]["#{__method__.downcase}"].to_d
  end

  def photones
    self.to_d * ENCRYPT_YAML_DATA["LTC"]["#{__method__.downcase}"].to_d
  end

  def litoshis
    self.to_d * ENCRYPT_YAML_DATA["LTC"]["#{__method__.downcase}"].to_d
  end

  # XMR
  def piconero
    self.to_d * ENCRYPT_YAML_DATA["XMR"]["#{__method__.downcase}"].to_d
  end

  def nanonero
    self.to_d * ENCRYPT_YAML_DATA["XMR"]["#{__method__.downcase}"].to_d
  end

  def micronero
    self.to_d * ENCRYPT_YAML_DATA["XMR"]["#{__method__.downcase}"].to_d
  end

  def millinero
    self.to_d * ENCRYPT_YAML_DATA["XMR"]["#{__method__.downcase}"].to_d
  end

  def centinero
    self.to_d * ENCRYPT_YAML_DATA["XMR"]["#{__method__.downcase}"].to_d
  end

  def decinero
    self.to_d * ENCRYPT_YAML_DATA["XMR"]["#{__method__.downcase}"].to_d
  end

  def monero
    self.to_d * ENCRYPT_YAML_DATA["XMR"]["#{__method__.downcase}"].to_d
  end

  # XEM
  def µxem
    self.to_d * ENCRYPT_YAML_DATA["XEM"]["#{__method__.downcase}"].to_d
  end

  def mxem
    self.to_d * ENCRYPT_YAML_DATA["XEM"]["#{__method__.downcase}"].to_d
  end

end

class Numeric
  include CryptoUnit
end
