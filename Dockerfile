# Use the specified PyTorch image as the base
FROM pytorch/pytorch:2.2.1-cuda12.1-cudnn8-devel

# Install curl package
RUN apt-get update && apt-get install -y curl

# Run the Ollama installation script
RUN curl -fsSL https://ollama.com/install.sh | sh

# Cleanup unnecessary files and packages (optional for reducing image size)
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
