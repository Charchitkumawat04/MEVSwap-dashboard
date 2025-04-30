select
    count(distinct pool) as pools_created
from dune.uniswap_fnd.result_uniswap_v_4_all_pools_data
where hooks = 0x99d32f38aA4D1Ec911420cbA3b52D11cB9F0B0C0
