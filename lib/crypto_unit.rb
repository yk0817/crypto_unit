require "crypto_unit/version"
require "yaml"


module CryptoUnit
  ENCRYPT_YAML_PATH = File.dirname(File.expand_path(__FILE__)) + "/crypto_unit/denomination.yml"
  ENCRYPT_YAML_DATA = YAML.load_file(ENCRYPT_YAML_PATH)
  
  # BTC
  def satoshi
    self * ENCRYPT_YAML_DATA["BTC"]["#{__method__.downcase}"].to_f
  end
  
  # ETH
  def tether
    self * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_f
  end
  
  def gether
    self * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_f
  end
  
  def mether
    self * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_f
  end
  
  def kether
    self * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_f
  end
  
  def ether
    self * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_f
  end
  
  def finney
    self * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_f
  end
  
  def szabo
    self * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_f
  end
  
  def gwei
    self * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_f
  end
  
  def mwei
    self * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_f
  end
  
  def kwei
    self * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_f
  end
  
  def wei
    self * ENCRYPT_YAML_DATA["ETH"]["#{__method__.downcase}"].to_f
  end
  
  # XRP
  def drop
    self * ENCRYPT_YAML_DATA["XRP"]["#{__method__.downcase}"].to_f
  end
  
  # LTC
  def lites
    self * ENCRYPT_YAML_DATA["LTC"]["#{__method__.downcase}"].to_f
  end
  
  def photones
    self * ENCRYPT_YAML_DATA["LTC"]["#{__method__.downcase}"].to_f
  end
  
  def litoshis
    self * ENCRYPT_YAML_DATA["LTC"]["#{__method__.downcase}"].to_f
  end
  
  # XMR
  def piconero
    self * ENCRYPT_YAML_DATA["XMR"]["#{__method__.downcase}"].to_f
  end
  
  def nanonero
    self * ENCRYPT_YAML_DATA["XMR"]["#{__method__.downcase}"].to_f
  end
  
  def micronero
    self * ENCRYPT_YAML_DATA["XMR"]["#{__method__.downcase}"].to_f
  end
  
  def millinero
    self * ENCRYPT_YAML_DATA["XMR"]["#{__method__.downcase}"].to_f
  end
  
  def centinero
    self * ENCRYPT_YAML_DATA["XMR"]["#{__method__.downcase}"].to_f
  end
  
  def decinero
    self * ENCRYPT_YAML_DATA["XMR"]["#{__method__.downcase}"].to_f
  end
  
  def monero
    self * ENCRYPT_YAML_DATA["XMR"]["#{__method__.downcase}"].to_f
  end
  
  # XEM
  def µxem
    self * ENCRYPT_YAML_DATA["XEM"]["#{__method__.downcase}"].to_f
  end
  
  def mxem
    self * ENCRYPT_YAML_DATA["XEM"]["#{__method__.downcase}"].to_f
  end
  
end

class Numeric
  include CryptoUnit
end