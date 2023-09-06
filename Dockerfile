# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install any necessary dependencies
RUN pip install -r requirements.txt

# Expose the port the app runs on
EXPOSE 8501

# Define the command to run your Streamlit app
CMD ["streamlit", "run", "main.py"]
