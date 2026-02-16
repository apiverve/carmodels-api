/// Response models for the Car Models API.

/// API Response wrapper.
class CarmodelsResponse {
  final String status;
  final dynamic error;
  final CarmodelsData? data;

  CarmodelsResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory CarmodelsResponse.fromJson(Map<String, dynamic> json) => CarmodelsResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CarmodelsData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Car Models API.

class CarmodelsData {
  int? count;
  List<String>? filteredOn;
  List<CarmodelsDataCarsItem>? cars;

  CarmodelsData({
    this.count,
    this.filteredOn,
    this.cars,
  });

  factory CarmodelsData.fromJson(Map<String, dynamic> json) => CarmodelsData(
      count: json['count'],
      filteredOn: (json['filteredOn'] as List?)?.cast<String>(),
      cars: (json['cars'] as List?)?.map((e) => CarmodelsDataCarsItem.fromJson(e)).toList(),
    );
}

class CarmodelsDataCarsItem {
  String? Make;
  String? CityMPG;
  String? CityELEC;
  String? CombMPG;
  String? CombELEC;
  String? Cyl;
  String? Displace;
  String? Drive;
  String? Fuel;
  String? HighwELEC;
  String? HighwMPG;
  String? Trans;
  String? Size;
  String? Year;
  String? Trim;
  String? Model;

  CarmodelsDataCarsItem({
    this.Make,
    this.CityMPG,
    this.CityELEC,
    this.CombMPG,
    this.CombELEC,
    this.Cyl,
    this.Displace,
    this.Drive,
    this.Fuel,
    this.HighwELEC,
    this.HighwMPG,
    this.Trans,
    this.Size,
    this.Year,
    this.Trim,
    this.Model,
  });

  factory CarmodelsDataCarsItem.fromJson(Map<String, dynamic> json) => CarmodelsDataCarsItem(
      Make: json['Make'],
      CityMPG: json['CityMPG'],
      CityELEC: json['CityELEC'],
      CombMPG: json['CombMPG'],
      CombELEC: json['CombELEC'],
      Cyl: json['Cyl'],
      Displace: json['Displace'],
      Drive: json['Drive'],
      Fuel: json['Fuel'],
      HighwELEC: json['HighwELEC'],
      HighwMPG: json['HighwMPG'],
      Trans: json['Trans'],
      Size: json['Size'],
      Year: json['Year'],
      Trim: json['Trim'],
      Model: json['Model'],
    );
}

class CarmodelsRequest {
  String make;
  int? year;

  CarmodelsRequest({
    required this.make,
    this.year,
  });

  Map<String, dynamic> toJson() => {
      'make': make,
      if (year != null) 'year': year,
    };
}
