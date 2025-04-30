SELECT
  SUM(amount_usd) AS total_volume_usd,
  COUNT(evt_tx_hash) AS total_tx_count
FROM dex.trades AS t
INNER JOIN uniswap_v4_multichain.poolmanager_evt_swap AS f
  ON t.tx_hash = f.evt_tx_hash
INNER JOIN dune.uniswap_fnd.result_uniswap_v_4_all_pools_data AS p
  ON p.pool = f.id AND p.blockchain = f.chain
WHERE
  p.hooks = 0x99d32f38aa4d1ec911420cba3b52d11cb9f0b0c0 AND NOT maker IS NULL
