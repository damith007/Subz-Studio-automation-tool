# Subz-Studio-automation-tool
A web-based automation tool for hard-burning subtitles into videos, specifically optimized for Sinhala font rendering and promotional content overlays.

## Features
* **Subtitle Burn-in:** Converts SRT to ASS and burns them using `libass` for professional-grade styling.
* **Complex Language Support:** Built-in font registration for Nirmala UI to handle Sinhala characters perfectly.
* **Auto-Branding:** * Adds recurring promotional text (top-center) at fixed intervals.
    * Automatically generates and overlays a custom "Subz.LK" watermark.
* **Archive.org Integration:** Directly upload processed videos to the Internet Archive with progress tracking.
* **Resource Monitoring:** Real-time dashboard to track CPU, RAM, and Disk usage via SocketIO.

## Prerequisites
* **FFmpeg:** Must be installed on your system.
* **Fontconfig:** Required for correct font handling.
* **Python 3.11+**

## Quick Start (Docker)
The easiest way to run Subz Studio is via Docker:

1. Build the image:
   ```bash
   docker build -t subz-studio .
