# ⚠️ Intentionally Using an Outdated Python Version for Educational Purposes
FROM python:3.6

# Set working directory
WORKDIR /app

# Copy application files first
COPY app.py /app/app.py
COPY requirements.txt /app/requirements.txt

# Ensure dependencies are installed
RUN ls -l /app/requirements.txt  # Debugging step

# Install outdated dependencies (deliberate vulnerabilities)
RUN pip install --no-cache-dir -r /app/requirements.txt

# Expose application port
EXPOSE 5000

# Run the Flask app
CMD ["python", "/app/app.py"]
