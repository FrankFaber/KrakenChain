#!/usr/bin/env bash
# use testnet settings,  if you need mainnet,  use ~/.krakenchain/krakenchaind.pid file instead
export LC_ALL=C

krakenchain_pid=$(<~/.krakenchain/testnet3/krakenchaind.pid)
sudo gdb -batch -ex "source debug.gdb" krakenchaind ${krakenchain_pid}
