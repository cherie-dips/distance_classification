# Use Python 3.11 as the base image
FROM python:3.11

# Set the working directory inside the container
WORKDIR /app

# Copy all project files into the container
COPY . .

# Install dependencies, including OpenCV and Jupyter
RUN pip install --no-cache-dir numpy pandas scikit-learn wandb opencv-python-headless jupyter matplotlib

# Convert Jupyter Notebook to Python script inside the container
RUN jupyter nbconvert --to script Lab5_distance_classification.ipynb

# Run the converted Python script
CMD ["python", "Lab5_distance_classification.py"]