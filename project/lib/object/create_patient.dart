class CreatePatient {
  final String documentTypeId;
  final String documentId;
  final String name;
  final String lastName;
  final String phone;
  final String address;
  final String email;
  final DateTime birthDate;
  final String gender;
  final String maritalStatusId;
  final String bloodTypeId;
  final String occupation;

  CreatePatient({
    required this.documentTypeId,
    required this.documentId,
    required this.name,
    required this.lastName,
    required this.phone,
    required this.address,
    required this.email,
    required this.birthDate,
    required this.gender,
    required this.maritalStatusId,
    required this.bloodTypeId,
    required this.occupation,
  });

  // Método para crear un objeto desde JSON
  factory CreatePatient.fromJson(Map<String, dynamic> json) {
    return CreatePatient(
      documentTypeId: json['document_type_id'],
      documentId: json['document_id'],
      name: json['name'],
      lastName: json['last_name'],
      phone: json['phone'],
      address: json['address'],
      email: json['email'],
      birthDate: DateTime.parse(json['birth_date']),
      gender: json['gender'],
      maritalStatusId: json['marital_status_id'],
      bloodTypeId: json['blood_type_id'],
      occupation: json['occupation'],
    );
  }

  // Método para convertir el objeto a JSON
  Map<String, dynamic> toJson() {
    return {
      'document_type_id': documentTypeId,
      'document_id': documentId,
      'name': name,
      'last_name': lastName,
      'phone': phone,
      'address': address,
      'email': email,
      'birth_date': birthDate.toIso8601String(),
      'gender': gender,
      'marital_status_id': maritalStatusId,
      'blood_type_id': bloodTypeId,
      'occupation': occupation,
    };
  }
}
