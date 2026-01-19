# Remote Temperature Monitoring with LabVIEW (Server–Client)

## Overview
This project implements a **remote temperature monitoring system** using **LabVIEW** and a **Server–Client architecture** based on **NI Shared Variables (PSP)**.

The system is composed of two main applications:
- **Server.vi** – simulates temperature data, processes it, and publishes results
- **Client.vi** – subscribes to published data and visualizes it in real time

The project demonstrates real-time monitoring, basic signal processing, alarm handling, and network-style communication within LabVIEW.

---

## Features
- Real-time temperature simulation
- Server–Client communication via Shared Variables
- Moving average filtering (exponential)
- Min / Max tracking
- High / Low threshold alarms
- Live waveform visualization
- Modular design using SubVIs

---

## Project Structure

RemoteTempMonitor.lvproj
│
├── Server.vi # Data generation, processing, alarm logic
├── Client.vi # Data visualization and monitoring UI
├── SimulateTemperature.vi # Temperature signal simulation
├── FilterAndStats.vi # Moving average, min/max computation
├── SharedVars.lvlib # Shared Variables library (SV_*)
└── README.md

---

## Shared Variables
The Server and Client communicate using the following Shared Variables:

| Variable Name | Type     | Description |
|--------------|----------|-------------|
| SV_Temp      | Double   | Current temperature |
| SV_MovAvg    | Double   | Moving average |
| SV_Min       | Double   | Minimum temperature |
| SV_Max       | Double   | Maximum temperature |
| SV_Alarm     | Boolean  | Alarm state |
| SV_Message   | String   | Alarm message |

This publish/subscribe model avoids explicit transport protocols (e.g., TCP/IP, serial).

---

## Server.vi
### Responsibilities
- Simulates a temperature signal
- Applies filtering and statistical processing
- Detects alarm conditions
- Publishes data via Shared Variables

### Temperature Simulation
The temperature is generated using the formula:

``` T = Tbase + Anoise · (2·rand() − 1) + 1.5 · sin(t / 5) ```


Where:
- `Tbase` – base temperature (e.g. 25°C)
- `Anoise` – noise amplitude
- Sinusoidal term adds slow periodic variation

### Alarm Logic
- **T > High Threshold** → Alarm ON (“TOO HOT”)
- **T < Low Threshold** → Alarm ON (“TOO COLD”)
- Otherwise → Alarm OFF

---

## Client.vi
### Responsibilities
- Reads Shared Variables periodically
- Displays current values and statistics
- Shows alarm state and message
- Plots temperature history using a Waveform Chart

A delay (`Wait (ms)`, e.g. 200 ms) is used to limit CPU usage.

---

## Requirements
- **LabVIEW** (tested with standard desktop version)
- NI Shared Variable Engine (included with LabVIEW)
- Windows OS (recommended)

---

## How to Run
1. Open `RemoteTempMonitor.lvproj` in LabVIEW
2. Run **Server.vi**
3. Run **Client.vi**
4. Adjust thresholds and noise parameters on the Server
5. Observe real-time updates on the Client

Both VIs can run:
- On the same PC  
- On different PCs in the same network (Shared Variables accessible)

---

## Testing Scenarios
- Increase **Noise Amplitude** to observe signal disturbance
- Set tight **High / Low thresholds** to trigger alarms
- Run Server and Client simultaneously
- Observe moving average smoothing vs. raw temperature

---

## License
This project is intended for **educational and academic use**.  

---

## Author
**Ungureanu Flavius-Ștefan**  
Faculty Project – January 2026  
