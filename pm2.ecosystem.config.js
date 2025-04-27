module.exports = {
  apps: [
    {
      name: 'api',
      script: 'backend/main.py',
      interpreter: 'python3',
      watch: false,
      max_memory_restart: '200M'
    },
    {
      name: 'arbitrage_agent',
      script: 'backend/arbitrage_agent.py',
      interpreter: 'python3',
      watch: false,
      max_memory_restart: '200M'
    },
    {
      name: 'sentiment_agent',
      script: 'backend/sentiment_manipulation_agent.py',
      interpreter: 'python3',
      watch: false,
      max_memory_restart: '200M'
    },
    {
      name: 'tesla_resonance_agent',
      script: 'backend/tesla_resonance_agent.py',
      interpreter: 'python3',
      watch: false,
      max_memory_restart: '200M'
    },
    {
      name: 'strategy_manager',
      script: 'backend/strategy_manager.py',
      interpreter: 'python3',
      watch: false,
      max_memory_restart: '200M'
    }
  ]
};
