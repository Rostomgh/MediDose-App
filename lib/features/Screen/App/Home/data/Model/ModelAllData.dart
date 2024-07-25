class ClinicModel {
  final String name;
  final String address;
  final String phone;
  final String time;
  final double latitude;
  final double longitude;

  ClinicModel({
    required this.name,
    required this.address,
    required this.phone,
    required this.time,
    required this.latitude,
    required this.longitude,
  });

  // Factory constructor to create a Clinic object from JSON
  factory ClinicModel.fromJson(Map<String, dynamic> json) {
    return ClinicModel(
      name: json['name'],
      address: json['address'],
      phone: json['phone'],
      time: json['time'],
      latitude: json['latitude'].toDouble(),
      longitude: json['longitude'].toDouble(),
    );
  }

  // Method to convert Clinic object to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'address': address,
      'phone': phone,
      'time': time,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}
