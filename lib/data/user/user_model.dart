class UserModel {
  String fullName;
  String email;
  String password;
  String phoneNumber;
  String city;
  String profileProgress;
  UserModel({
    required this.fullName,
    required this.email,
    required this.password,
    required this.phoneNumber,
    required this.city,
    required this.profileProgress,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      fullName: json['fullName'],
      email: json['email'],
      password: json['password'],
      phoneNumber: json['phoneNumber'],
      city: json['city'],
      profileProgress: json['profileProgress'],
    );
  }
}
