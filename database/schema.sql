CREATE EXTENSION IF NOT EXISTS postgis;

-- 1. 1937 HOLC Redlining Zones
CREATE TABLE holc_zones (
    id SERIAL PRIMARY KEY,
    grade CHAR(1) NOT NULL,            
    neighborhood VARCHAR(100),
    geom GEOMETRY(MultiPolygon, 4326)
);

-- 2. Modern Broadband Infrastructure (FCC Data)
CREATE TABLE broadband_blocks (
    block_geoid VARCHAR(15) PRIMARY KEY,
    provider VARCHAR(100),
    tech_type VARCHAR(50), 
    max_down_mbps INT,
    max_up_mbps INT,
    geom GEOMETRY(MultiPolygon, 4326)
);

-- 3. Cybersecurity & Firmware Lab Findings
CREATE TABLE cyber_findings (
    id SERIAL PRIMARY KEY,
    hardware_model VARCHAR(100),
    firmware_version VARCHAR(50),
    cve_id VARCHAR(30),
    vulnerability_summary TEXT,
    geom GEOMETRY(Point, 4326)
);

CREATE INDEX idx_holc_geom ON holc_zones USING GIST (geom);
CREATE INDEX idx_broadband_geom ON broadband_blocks USING GIST (geom);
CREATE INDEX idx_cyber_geom ON cyber_findings USING GIST (geom);