# Digital Redlining \& Structural Cyber Risk (Asheville, NC)



A full-stack spatial intelligence and cybersecurity capstone project correlating 1937 Home Owners' Loan Corporation (HOLC) redlining zones in Asheville, NC with modern broadband disinvestment and End-of-Life (EOL) consumer hardware vulnerabilities.



## Core Thesis

Decades of telecom underinvestment in historically redlined neighborhoods have created a structural cybersecurity gap: residents in low-income tracts disproportionately rely on legacy infrastructure and unpatched, End-of-Life ISP gateways. Applying a "bottom-up" defense model, this platform maps macro-level infrastructure disparities alongside micro-level firmware vulnerability audits to advocate for municipal public utility broadband.



## System Architecture

**Database:** PostgreSQL + PostGIS (spatial joins via `ST\_Intersects`, `ST\_AsGeoJSON` API payloads)

**Backend / ETL:** Python / Go (filtering FCC BDC datasets \& serving spatial REST endpoints)

**Frontend GIS:** Leaflet.js interactive web map

**Security Lab:** Isolated QEMU / Firmadyne offline firmware emulation \& CVE verification



## Repository Structure

```text

asheville-digital-redlining/

├── backend/        # API server & ETL scripts

├── data/

│   ├── raw/        # Unmodified HOLC GeoJSON, FCC BDC CSVs, & Census TIGER shapefiles

│   └── processed/  # Buncombe County (FIPS: 37021) filtered & EPSG:4326 standardized datasets

├── database/       # PostGIS DDL schemas (schema.sql) & spatial queries

├── frontend/       # Web GIS dashboard prototype (index.html)

└── lab/            # Offline QEMU firmware emulation notes & CVE findings

