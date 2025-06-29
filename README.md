# ✈️ Flight Tracker Web Application

A flight tracking application inspired by FlightRadar24. Built with:

- Spring Boot (Java)
- 🌍 OpenLayers (JS Mapping Library)
- 🧾 PapaParse (CSV Parsing)
- ⚡ Vite + JavaScript (Frontend)
- 🐳 Docker (Containerisation)


---

## Features

- Search for real-time flight data by airline name
- Interactive world map showing flight positions
- Parses and displays airport data from CSV files
- Backend API requests handled via Spring Boot
- Frontend built with Vite and deployed via Docker

---

## Tech Stack

| Layer        | Tech                     |
|--------------|--------------------------|
| Backend      | Spring Boot (Java), REST |
| Frontend     | Vite, JS         |
| Mapping      | OpenLayers               |
| CSV Parsing  | PapaParse                |
| Infrastructure | Docker |

---

## Dockerised Application

The entire application (frontend + backend) is bundled and served by a single Spring Boot container.

- `vite build` bundles all frontend code into static files (`main-[hash].js`, `main-[hash].css)
- These static files are served from Spring Boot's `resources/static` directory
- No need to copy `node_modules`, all dependencies are bundled into the final JS.

---

## How to launch

```bash
# Clone the repo
git clone https://github.com/your-username/flight-tracker.git
cd flight-tracker
run config, exec

# Build frontend
install nodejs
cd src/main/client
npm install
npm run build

# Build Docker image
docker build -t flight-app .

# Run container
docker run -p 8080:8080 -e apiKey=YOUR_API_KEY* flight-app
```

*You need an API key from aviationstack.com.

![image](https://github.com/user-attachments/assets/ec0acbd6-7101-4597-9e74-51b773436641)



![image](https://github.com/user-attachments/assets/51a39bee-39cb-4432-8edc-2b4c7d66192c)


