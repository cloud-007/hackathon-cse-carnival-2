class Profile {
  final int id;
  final String mobileNumber;
  final String? address;
  final String? institution;
  final String? occupation;
  final bool isConsultant;

  Profile({
    required this.id,
    required this.mobileNumber,
    required this.address,
    required this.institution,
    required this.occupation,
    required this.isConsultant,
  });
}
