class Profile {
  final int id;
  final String mobileNumber;
  final String address;
  final String institution;
  final String department;
  final int? graduationYear;

  Profile({
    required this.id,
    required this.mobileNumber,
    required this.address,
    required this.institution,
    required this.department,
    required this.graduationYear,
  });
}
