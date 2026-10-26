/// Response models for the US Car Models API.

/// API Response wrapper.
class CarmodelsResponse {
  final String status;
  final dynamic error;
  final CarmodelsData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  CarmodelsResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory CarmodelsResponse.fromJson(Map<String, dynamic> json) => CarmodelsResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CarmodelsData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the US Car Models API.

class CarmodelsData {
  num? count;
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
  String? model;
  String? trim;

  CarmodelsRequest({
    required this.make,
    this.year,
    this.model,
    this.trim,
  });

  Map<String, dynamic> toJson() => {
      'make': make,
      if (year != null) 'year': year,
      if (model != null) 'model': model,
      if (trim != null) 'trim': trim,
    };
}
