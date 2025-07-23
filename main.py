from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def hello():
    return {'message':'Hello, world'}

@app.get("/about")
def about():
    return {'message':'This is a practice for me to learn about FastAPIs'}

# uvicorn main:app --reload