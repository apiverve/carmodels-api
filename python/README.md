US Car Models API
============

US Car Models is a car make and model API for vehicles sold in the United States from 1984 to present. List models by make on any plan, while paid plans add year filters, trims, fuel economy (MPG), engine details, and transmission specifications.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-uscarmodels.svg)](https://pypi.org/project/apiverve-uscarmodels/)

This is a Python wrapper for the [US Car Models API](https://apiverve.com/marketplace/carmodels?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-uscarmodels
```

Using `pip3`:

```bash
pip3 install apiverve-uscarmodels
```

---

## Configuration

Before using the US Car Models API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_uscarmodels.apiClient import CarmodelsAPIClient

# Initialize the client with your APIVerve API key
api = CarmodelsAPIClient("[YOUR_API_KEY]")

query = {
    "make": "Toyota",
    "year": 2024,
    "model": "Camry",
    "trim": "Hybrid"
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The US Car Models API documentation is found here: [https://docs.apiverve.com/ref/carmodels](https://docs.apiverve.com/ref/carmodels?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_uscarmodels.apiClient import CarmodelsAPIClient

# Initialize the client with your APIVerve API key
api = CarmodelsAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "make": "Toyota",
    "year": 2024,
    "model": "Camry",
    "trim": "Hybrid"
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "count": 4,
    "filteredOn": [
      "year",
      "make",
      "model"
    ],
    "cars": [
      {
        "Make": "Acura",
        "CityMPG": "30",
        "CityELEC": "0",
        "CombMPG": "33",
        "CombELEC": "0",
        "Cyl": "4",
        "Displace": "1.5",
        "Drive": "Front-Wheel Drive",
        "Fuel": "Premium",
        "HighwELEC": "0",
        "HighwMPG": "37",
        "Trans": "Automatic (AV-S7)",
        "Size": "Large Cars",
        "Year": "2024",
        "Trim": "Integra",
        "Model": "Integra"
      },
      {
        "Make": "Acura",
        "CityMPG": "21",
        "CityELEC": "0",
        "CombMPG": "24",
        "CombELEC": "0",
        "Cyl": "4",
        "Displace": "2",
        "Drive": "Front-Wheel Drive",
        "Fuel": "Premium",
        "HighwELEC": "0",
        "HighwMPG": "28",
        "Trans": "Manual 6-spd",
        "Size": "Large Cars",
        "Year": "2024",
        "Trim": "Integra",
        "Model": "Integra"
      },
      {
        "Make": "Acura",
        "CityMPG": "26",
        "CityELEC": "0",
        "CombMPG": "30",
        "CombELEC": "0",
        "Cyl": "4",
        "Displace": "1.5",
        "Drive": "Front-Wheel Drive",
        "Fuel": "Premium",
        "HighwELEC": "0",
        "HighwMPG": "36",
        "Trans": "Manual 6-spd",
        "Size": "Large Cars",
        "Year": "2024",
        "Trim": "Integra A-Spec",
        "Model": "Integra"
      },
      {
        "Make": "Acura",
        "CityMPG": "29",
        "CityELEC": "0",
        "CombMPG": "32",
        "CombELEC": "0",
        "Cyl": "4",
        "Displace": "1.5",
        "Drive": "Front-Wheel Drive",
        "Fuel": "Premium",
        "HighwELEC": "0",
        "HighwMPG": "36",
        "Trans": "Automatic (AV-S7)",
        "Size": "Large Cars",
        "Year": "2024",
        "Trim": "Integra A-Spec",
        "Model": "Integra"
      }
    ]
  }
}
```

---

## Error Handling

The API client provides comprehensive error handling through the `CarmodelsAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_uscarmodels.apiClient import CarmodelsAPIClient, CarmodelsAPIClientError

api = CarmodelsAPIClient("[YOUR_API_KEY]")

query = {
    "make": "Toyota",
    "year": 2024,
    "model": "Camry",
    "trim": "Hybrid"
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except CarmodelsAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_uscarmodels.apiClient import CarmodelsAPIClient, CarmodelsAPIClientError

api = CarmodelsAPIClient("[YOUR_API_KEY]")

query = {
    "make": "Toyota",
    "year": 2024,
    "model": "Camry",
    "trim": "Hybrid"
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except CarmodelsAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_uscarmodels.apiClient import CarmodelsAPIClient, CarmodelsAPIClientError

query = {
    "make": "Toyota",
    "year": 2024,
    "model": "Camry",
    "trim": "Hybrid"
}

# Using context manager ensures proper cleanup
with CarmodelsAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except CarmodelsAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_uscarmodels.apiClient import CarmodelsAPIClient

# Enable debug mode
api = CarmodelsAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "make": "Toyota",
    "year": 2024,
    "model": "Camry",
    "trim": "Hybrid"
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_uscarmodels.apiClient import CarmodelsAPIClient

api = CarmodelsAPIClient("[YOUR_API_KEY]")

query = {
    "make": "Toyota",
    "year": 2024,
    "model": "Camry",
    "trim": "Hybrid"
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
