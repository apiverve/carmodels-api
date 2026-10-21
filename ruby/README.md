# US Car Models API - Ruby Gem

US Car Models is a car make and model API for vehicles sold in the United States from 1984 to present. List models by make on any plan, while paid plans add year filters, trims, fuel economy (MPG), engine details, and transmission specifications.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_carmodels'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_carmodels
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_carmodels'

# Initialize the client
client = APIVerve::Carmodels::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  make: "Toyota",
  year: 2024,
  model: "Camry",
  trim: "Hybrid"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ make: "Toyota", year: 2024, model: "Camry", trim: "Hybrid" })
  puts response["data"]
rescue APIVerve::Carmodels::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Carmodels::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Carmodels::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/carmodels?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/carmodels?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/carmodels?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
