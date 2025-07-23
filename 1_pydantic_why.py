from pydantic import BaseModel, EmailStr, AnyUrl
from typing import List, Dict, Optional 

class Patient(BaseModel):
    
    name: str
    age: int
    email: EmailStr
    linkedin: AnyUrl
    weight: float
    married: bool = False
    allergies: Optional[List[str]] = None
    contact_details: Dict[str, str] 
    
def insert_patient_data(patient: Patient):
    
    print(patient.name)
    print(patient.age)
    print(patient.weight)
    print(patient.linkedin)
    print(patient.married)
    print(patient.allergies)
    print(patient.contact_details)
    print('Inserted')
    
def update_patient_data(patient: Patient):
    print(patient.name) 
    print(patient.age)
    print(patient.weight)
    print(patient.married)
    print(patient.allergies)
    print(patient.contact_details)
    print('Updated')    
    
patient_info = {'name': 'pavan', 'age': 23, 'weight': 70, 'email': 'anything@gmail.com', 'linkedin': 'http://linked.com', 'contact_details': {'email': 'krishvenigalla06@gmail.com', 'mobile': '2677347347'}}

patient1 = Patient(**patient_info)        

insert_patient_data(patient1)