# 🛡️ Go AI Security Platform
AI-Powered Security Threat Detection Platform built with Go and AWS.
## 🚀 Quick Deployment

```bash
# Set version and deploy
export APP_VERSION="1.0.0"
./infrastructure/scripts/deploy.sh apply

📁 Struktur Project
go-ai-security-platform/
├── src/cmd/api/main.go          # Main Go application
├── infrastructure/
│   ├── terraform/aws/           # AWS infrastructure
│   └── scripts/                 # Deployment scripts
├── Dockerfile.prod              # Production Dockerfile
└── go.mod                       # Go dependencies

🔧 Features
· 🤖 AI Threat Detection
· ☁️ AWS Cloud Deployment
· 🔒 Secure Architecture
· 🚀 High Performance Go Backend
· 📊 Real-time Monitoring

🛠️ API Endpoints
· GET /api/health - Health check
· POST /api/ai/threats - Threat detection
· POST /api/ai/predict - AI predictions
