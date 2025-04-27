# DDx Autonomous Trading Bot

## Overview
DDx is a fully autonomous, high-frequency AI trading system designed to execute multiple strategies across crypto and stock markets with minimal human intervention. It integrates mean reversion, statistical arbitrage, event-driven, and options strategies, all orchestrated via modular agents that communicate over Redis. DDx emphasizes risk management, dynamic capital allocation, and self-healing deployment.

## Repository Structure
```
.
├── README.md
├── Dockerfile
├── docker-compose.yml
├── pm2.ecosystem.config.js
├── one_click_backend_deploy.sh
├── one_click_frontend_deploy.sh
├── backend/
│   ├── main.py
│   ├── arbitrage_agent.py
│   ├── agent_manager.py
│   ├── blockchain_manager.py
│   ├── sentiment_manipulation_agent.py
│   ├── strategy_manager.py
│   └── tesla_resonance_agent.py
├── api.js
├── package-lock.json
└── docs/
    ├── architecture.md
    ├── deployment.md
    └── usage.md
```
