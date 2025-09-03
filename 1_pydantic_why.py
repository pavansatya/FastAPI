from pydantic import BaseModel, EmailStr, AnyUrl, Field
from typing import List, Dict, Optional, Annotated 

class Patient(BaseModel):
    
    name: Annotated[str, Field(max_length=50, title='Name of the patient', description='Give the name of the patient in less than 50 characters', examples=['Pavan', 'Krishna'])]
    age: int
    email: EmailStr
    linkedin: AnyUrl
    weight: float = Field(gt=0)
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