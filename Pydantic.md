1) Define a Pydantic model that represents the ideal schema of the data.
- This includes the expected fields, their types, and any validation constraints (eg, `gt=0` for positive numbers)

2) Instantiate the model with raw input data (usually a dictionary or JSON-like structure)
- Pydantic will automatically validate the data and coerce it into the correct Python types (if possible)
- If the data doesn.t meet the model's requirements, pydantic raise a `ValidationError`

3) Pass the validated model object to functions or use it throughout the codebase
- This ensures that every part of your program works with clean, type-safe, and logically valid data.

