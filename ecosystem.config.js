
module.exports = {
  apps : [
    {
      name: "ddx-api",
      script: "./main.py",
      cwd: "./backend",
      interpreter: "./venv/bin/python3",
      log_file: "./logs/api.log",
      autorestart: true,
      watch: false
    },
    {
      name: "sentiment-agent",
      script: "./sentiment_manipulation_agent.py",
      cwd: "./backend",
      interpreter: "./venv/bin/python3",
      log_file: "./logs/sentiment.log",
      autorestart: true,
      watch: false
    },
    {
      name: "arbitrage-agent",
      script: "./arbitrage_agent.py",
      cwd: "./backend",
      interpreter: "./venv/bin/python3",
      log_file: "./logs/arbitrage.log",
      autorestart: true,
      watch: false
    }
  ]
}
