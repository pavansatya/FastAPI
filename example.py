from fastapi import FastAPI, Path, HTTPException, Query
import json

app = FastAPI()

def load_data():
    with open('/Users/krishvenigalla/Desktop/FastAPI/patients.json', 'r') as f:
        data = json.load(f)
        
    return data    

@app.get("/")
def hello():
    return {'message':'Patient management API'}

@app.get("/about")
def about():
    return {'message':'This is a fully functional patient management API'}

@app.get('/view')
def view():
    data = load_data()
    
    return data

@app.get('/patient/{patient_ID}')
def view_patient(patient_ID: str = Path(..., description='ID of the patient in the DB', example='P001')):
    data = load_data()
    
    if patient_ID in data:
        return data[patient_ID]
    # return {'error': 'Patient not found!'} -- it gives code 200
    raise HTTPException(status_code = 404, detail = 'Patient not found!') # it gives code 404
 
@app.get('/sort')
def sort_patients(sort_by: str = Query(..., description='Sort on the basis of height, weight or bmi'), order: str = Query('asc', description='sort in asc or desc order')):
    valid_fields = ['height', 'weight', 'bmi']
    
    if sort_by not in valid_fields:
        raise HTTPException(status_code=400, detail = f'Invalid field select from {valid_fields}')  
    
    if order not in ['asc', 'desc']:
        raise HTTPException(status_code=400, detail = 'Invalid order select between asc and desc')
    
    data = load_data()
    
    sort_order = True if order=='desc' else False
    
    sorted_data = sorted(data.values(), key = lambda x: x.get(sort_by, 0), reverse=False)
    
    return sorted_data
    
      

# uvicorn example:app --reload