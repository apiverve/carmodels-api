# US Car Models API - PHP Package

US Car Models provides comprehensive data on vehicles sold in the United States. Returns detailed specifications including fuel economy (MPG), engine details, transmission, and more for cars from 1984 to present.

## Installation

Install via Composer:

```bash
composer require apiverve/carmodels
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Carmodels\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'make' => 'Toyota',
    'year' => 2024
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Carmodels\Client;
use APIVerve\Carmodels\Exceptions\APIException;
use APIVerve\Carmodels\Exceptions\ValidationException;

try {
    $response = $client->execute(['make' => 'Toyota', 'year' => 2024]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/carmodels?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://carmodels.apiverve.com?utm_source=php&utm_medium=readme](https://carmodels.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
