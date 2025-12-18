# Shadowsocks Server for Railway

Fast, single-user Shadowsocks proxy server optimized for Railway.app deployment.

## Configuration

| Setting | Value |
|---------|-------|
| Server | `your-railway-domain.up.railway.app` |
| Port | `8388` |
| Password | `iyad2013` |
| Encryption | `aes-256-gcm` |
| Protocol | TCP + UDP |

## Deploy to Railway

### 1. Push to GitHub

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
git push -u origin main
```

### 2. Deploy on Railway

1. Go to [railway.app](https://railway.app)
2. Click **"New Project"**
3. Select **"Deploy from GitHub repo"**
4. Choose your repository
5. Railway will auto-detect Dockerfile and build

### 3. Expose Port

1. Go to your service **Settings**
2. Under **Networking**, click **"Generate Domain"**
3. Set **Port** to `8388`
4. Copy the generated domain

### 4. Connect Client

Use any Shadowsocks client:
- **Windows**: Shadowsocks-Windows
- **Android**: Shadowsocks (Play Store)
- **iOS**: Shadowrocket / Potatso
- **macOS**: ShadowsocksX-NG

Enter your Railway domain, port 8388, password, and encryption method.

## Optimizations

- Alpine Linux base (minimal image ~10MB)
- No logging (reduces I/O)
- TCP no-delay (lower latency)
- Port reuse (better performance)
- 60s timeout (quick cleanup)
- Non-root user (Railway compatible)
