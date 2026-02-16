# Car Models API - Dart/Flutter Client

Car Models is a simple tool for getting information on cars. It returns information on various car models including makes, models, trims, and specifications.

[![pub package](https://img.shields.io/pub/v/apiverve_carmodels.svg)](https://pub.dev/packages/apiverve_carmodels)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Car Models API](https://apiverve.com/marketplace/carmodels?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_carmodels: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_carmodels/apiverve_carmodels.dart';

void main() async {
  final client = CarmodelsClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'make': 'Toyota',
      'year': 2024
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Car Models API](https://apiverve.com/marketplace/carmodels?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/carmodels](https://docs.apiverve.com/ref/carmodels?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
