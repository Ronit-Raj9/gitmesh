#!/bin/bash

echo "🚀 Starting Beetle Backend in stable mode..."
echo "📝 This mode prevents server restarts during OAuth"
echo ""

# Kill any existing node processes on port 3001
echo "🔄 Cleaning up existing processes..."
pkill -f "node.*src/index.cjs" || true
sleep 2

# Start the backend without nodemon for stable OAuth
echo "✅ Starting backend server..."
node src/index.cjs 