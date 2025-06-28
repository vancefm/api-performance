from fastapi import FastAPI
import uvicorn

# start with: uvicorn app:app --host 0.0.0.0 --port 8000 --workers 4

app = FastAPI()

@app.get("/status")
async def root():
  return {"message": "Fast API Okay"}, 200

if __name__ == "__main__":
  uvicorn.run(app, host="0.0.0.0", port=8000)
