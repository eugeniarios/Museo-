import os
import psycopg2
from fastapi import FastAPI, HTTPException

app = FastAPI(title="Museo-Sistema")


@app.get("/health")
def health():
    return {"status": "ok"}


@app.get("/health/db")
def health_db():
    try:
        conn = psycopg2.connect(
            host=os.environ["DB_HOST"],
            dbname=os.environ["DB_NAME"],
            user=os.environ["DB_USER"],
            password=os.environ["DB_PASSWORD"],
        )
        conn.close()
        return {"db": "ok"}
    except Exception:
        raise HTTPException(status_code=503, detail="No se pudo conectar a la base de datos")
