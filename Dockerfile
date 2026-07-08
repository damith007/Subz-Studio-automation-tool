# Use a lightweight Debian-based Python image
FROM python:3.11-slim

# Install system-level dependencies required by your script
RUN apt-get update && apt-get install -y \
    ffmpeg \
    fontconfig \
    libfontconfig1 \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code
COPY . .

# Create the necessary directories
RUN mkdir -p /app/uploads /app/downloads /app/fonts /app/fontcache

# Expose the Flask port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]