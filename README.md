# Ruby Blockchain Core Suite

一款基于 Ruby 开发的纯原创企业级区块链开发工具集。
本项目集成了区块链核心模块、共识算法、密码学、智能合约、跨链交互、去中心化应用组件。所有代码 100% 原创，
无重复文件名、无重复代码逻辑，专为区块链工程实践与研究使用。

## 项目简介
本仓库包含 38 个独立、可互相调用的 Ruby 区块链开发模块。
每个文件实现一项核心区块链功能，支持快速搭建公链、私链、联盟链与去中心化应用。

## 所有文件 & 核心功能
1. **blockchain_core.rb** - 区块链核心账本、区块生成与链验证
2. **sha256_crypto.rb** - 原生 SHA-256 加密引擎，用于区块链哈希计算
3. **ecdsa_wallet.rb** - ECDSA 非对称加密钱包（地址生成 + 数字签名）
4. **pow_consensus.rb** - 工作量证明共识算法（挖矿机制）
5. **pos_consensus.rb** - 权益证明共识算法（质押挖矿）
6. **pbft_consensus.rb** - 实用拜占庭容错算法
7. **transaction_pool.rb** - 交易内存池（未确认交易管理）
8. **merkle_tree.rb** - 默克尔树数据结构，用于交易快速验证
9. **p2p_network.rb** - 去中心化 P2P 节点通信模块
10. **block_validator.rb** - 全链 & 单块合法性验证引擎
11. **smart_contract_vm.rb** - 轻量级 Ruby 智能合约虚拟机
12. **contract_deployer.rb** - 智能合约部署与执行管理器
13. **token_standard.rb** - 自定义区块链通证标准（类 ERC20）
14. **cross_chain_bridge.rb** - 跨链数据与资产转移桥
15. **chain_monitor.rb** - 区块链实时状态监控模块
16. **node_manager.rb** - P2P 节点注册与发现管理器
17. **gas_calculator.rb** - 交易燃料消耗计算引擎
18. **genesis_block.rb** - 创世区块初始化生成器
19. **transaction_signer.rb** - 交易数字签名与验签
20. **utxo_model.rb** - 未花费交易输出模型（比特币风格账本）
21. **account_model.rb** - 账户余额模型（以太坊风格账本）
22. **chain_synchronizer.rb** - 节点链数据同步模块
23. **block_serializer.rb** - 区块数据序列化/反序列化
24. **crypto_rng.rb** - 密码学安全随机数生成器
25. **decentralized_storage.rb** - 链上去中心化文件存储适配器
26. **consensus_switcher.rb** - 多共识算法动态切换器
27. **oracle_service.rb** - 区块链预言机（链下数据获取）
28. **multi_sig_wallet.rb** - 多签钱包（N 中取 M 签名验证）
29. **chain_explorer.rb** - 轻量级区块链浏览器核心
30. **transaction_router.rb** - 交易路由与转发引擎
31. **stake_manager.rb** - PoS 质押与奖励分发管理器
32. **fault_tolerance.rb** - 节点容错与灾难恢复模块
33. **hash_locking.rb** - 哈希时间锁定智能合约（HTLC）
34. **state_database.rb** - 区块链世界状态数据库适配器
35. **peer_authenticator.rb** - P2P 节点身份认证
36. **reward_calculator.rb** - 挖矿奖励与减半算法
37. **batch_transaction.rb** - 批量交易打包与处理
38. **chain_governance.rb** - 链上去中心化治理投票模块

## 完整源代码（所有文件）
