# Use Python 3.11 as the base image
FROM python:3.11

# Set the working directory inside the container
WORKDIR /app

# Copy all project files into the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir numpy pandas scikit-learn wandb

# Command to run the Python script
CMD ["python", "Lab5_distance_classification.ipynb"]