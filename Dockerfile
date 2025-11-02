# ---------------------------
# 1️⃣ Base image
# ---------------------------
FROM python:3.9-slim

# ---------------------------
# 2️⃣ Working directory
# ---------------------------
WORKDIR /app

# ---------------------------
# 3️⃣ Copy project files into container
# ---------------------------
COPY . /app

# ---------------------------
# 4️⃣ Install Python dependencies
# ---------------------------
RUN pip install --no-cache-dir -r requirements.txt

# ---------------------------
# 5️⃣ Expose port for FastAPI
# ---------------------------
EXPOSE 8080

# ---------------------------
# 6️⃣ Start FastAPI using Uvicorn
# ---------------------------
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
