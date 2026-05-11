# WatchWave - YouTube Watch Party Platform

A production-grade real-time YouTube watch party application built with Next.js, FastAPI, Socket.IO, and PostgreSQL.

## Project Structure

```
watchwave/
├── frontend/          # Next.js React application
├── backend/           # FastAPI Python backend
├── docker/            # Docker configuration
├── docs/              # Documentation
└── README.md
```

## Development Roadmap

### Phase 1: Core Architecture ✅ IN PROGRESS
- [x] Project setup
- [ ] Basic connectivity
- [ ] Room system
- [ ] Socket.IO integration

### Phase 2: Features
- [ ] YouTube player integration
- [ ] Playback synchronization
- [ ] Real-time chat
- [ ] Host controls

### Phase 3: Advanced
- [ ] Redis caching
- [ ] User authentication
- [ ] Database persistence
- [ ] Docker deployment

## Getting Started

### Backend Setup
```bash
cd backend
python -m venv venv
venv\Scripts\activate  # Windows
pip install -r requirements.txt
uvicorn main:socket_app --reload
```

### Frontend Setup
```bash
cd frontend
npm install
npm run dev
```

Frontend runs at: `http://localhost:3000`
Backend runs at: `http://localhost:8000`

## Technologies

- **Frontend**: Next.js, React, TypeScript, Tailwind CSS
- **Backend**: FastAPI, Python, Socket.IO
- **Real-time**: Socket.IO with ASGI
- **Database**: PostgreSQL
- **Cache**: Redis
- **Deployment**: Docker
