# Use official Python image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy application files
COPY docker/app.py /app/

# Install dependencies (if any)
RUN pip install flask

# Expose port 5000
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
