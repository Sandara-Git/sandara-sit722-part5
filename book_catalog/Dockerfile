# Your Solution
FROM --platform=linux/amd64 python:3.11-slim
WORKDIR /usr/src/app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . /usr/src/app
EXPOSE 8000
ENV DATABASE_URL=postgresql://sit722_part5_aaaf_user:CMLIfDEWuS9jr6GMEmSNS8X3BTgIoGmg@dpg-cs33o8t6l47c73e92dh0-a.oregon-postgres.render.com/sit722_part5_aaaf
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
