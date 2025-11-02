from fastapi import FastAPI
from pydantic import BaseModel
import joblib
import numpy as np

# test edit
class IrisFeatures(BaseModel):
    sepal_length: float
    sepal_width: float
    petal_length: float
    petal_width: float

app = FastAPI()
model = joblib.load("model/iris_model.pkl")

@app.get("/")
def read_root():
    return {"message": "Iris model API is running"}

@app.post("/predict")
def predict(data: IrisFeatures):
    features = np.array([[data.sepal_length, data.sepal_width, data.petal_length, data.petal_width]])
    pred = model.predict(features)
    return {"prediction": pred[0]}
