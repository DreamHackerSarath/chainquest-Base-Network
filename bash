cd subgraph
npm install
# set placeholders in subgraph.yaml
npm run codegen
npm run build
# deploy to hosted service / studio
export GRAPH_ACCESS_TOKEN=YOUR_TOKEN
export GRAPH_SLUG=yourname/chainquest-ai
npm run deploy
cd backend
npm install
cp .env.example .env
# set SUBGRAPH_URL to your deployed subgraph
npm run dev
# Test:
curl http://localhost:4000/health
curl http://localhost:4000/quests
curl http://localhost:4000/leaderboard
cd frontend
npm install
cp .env.example .env
# set NEXT_PUBLIC_BACKEND_URL and WalletConnect project id
npm run dev
