# Path Params

Path parameters are dynamic segments of a URL path used to identify a specific resource. 

ex: We can use */patient/{patient_ID}* in our URL to input *patient_IDs*.

# Path()

The path() function in FastAPI is used to provide metadata, vallidation rules, and documentation hints for path parameters in your API end points.

Title
Description
Example
ge, gt, le, lt
Min_length, Max_length
Regex

# HTTP status codes

HTTP status codes are three digit numbers returned by a web server (like FastAPI) to indicate the result of a client's request (like from a browser or API customer)

types of status codes:

1) `2xx` - success - The request was successfully received and processed

2) `3xx` - Redirection - Further action needs to be taken (eg: redirect)

3) `4xx` - Client Error - Something is wrong with the request from the client

4) `5xx` - Server Error - Something went wrong on the server side

**HTTPException is a special built in exception in FastAPI used to return custom HTTP error responses when something goes wrong in your API**

Instead of returning a noormal JSON or crashing the server, you can gracefully raise an error with:

- a proper HTTP status code (like 404, 400, 403, etc;)
- a custom error message
- extra headers (optional)

# Query parameter

Query parameters are optional key-value pairs appended to the end of a URL, used to pass additional data to the server in an HTTP request. They are typically employed for operations like filtering, sorting, searching, and pagination without altering the endpoint path itself.

- The `?` marks the start of query parameters
- Each parameter is a key-value pair: `key=value`
- Multiple parameters are seperated by `&` 

ex: `/patient?city=San Diego&sort_by=age`

- `city=San Diego` is a query parameter for filtering
- `sort_by=age` is a query parameter fpr sorting


`Query()` is a utility function provided by FastAPI to declare, validate, and document query parameters in your API endpoints.

It allows you to:

- Set default values
- Enforce vaidation rules
- Add metadata like description, title, examples
