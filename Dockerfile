# Use a lightweight Python base image
FROM python:3.7-slim

# Define the working directory inside the container
WORKDIR /docker-flask-test

# Copy the project contents into the working directory
COPY . /docker-flask-test

# Upgrade pip to the latest version
RUN python -m pip install --upgrade pip

# Install the dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 4455 for the Flask app
EXPOSE 4455

# Define the default command to run the app
CMD ["python", "run.py"]