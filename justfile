@default:
  just --list


@startemzy:
  echo "Starting Spectrum, and connecting to Emzy's Electrum server..."
  python3 -m cryptoadvance.spectrum server --config cryptoadvance.spectrum.config.EmzyElectrumLiteConfig

@startnigiri:
  echo "Starting Spectrum, and connecting to Nigiri's Electrum server..."
  python3 -m cryptoadvance.spectrum server --config cryptoadvance.spectrum.config.NigiriLocalElectrumLiteConfig

@chaininfo:
  bitcoin-cli --rpcport=8081 getblockchaininfo

@newwallet wallet_name:
  bitcoin-cli --rpcport=8081 createwallet {{wallet_name}}
  echo "Wallet {{wallet_name}}, has been created..."

@genaddress:
  bitcoin-cli --rpcport=8081 getnewaddress
  echo "Generating new address:"

@send address amount:
  bitcoin-cli --rpcport=8081 sendtoaddress {{address}} {{amount}}
  echo "Sending {{amount}} bitcoin to {{address}}

@getbalance:
  bitcoin-cli --rpcport=8081 getbalance
  echo "Getting balance:"

@listunspent:
  bitcoin-cli --rpcport=8081 listunspent
  echo "Listing unspent outputs:"

@getblock blockhash:
  bitcoin-cli --rpcport=8081 getblock {{blockhash}}
  echo "Getting block {{blockhash}}:"

@getblockstats height:
  bitcoin-cli --rpcport=8081 getblock {{height}}
  echo "Getting block stats for block {{height}}:"
