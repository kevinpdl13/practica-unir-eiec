
class Patient {
  final int id;
  final String tenantId;
  final String documentTypeId;
  final String documentId;
  final String name;
  final String lastName;
  final String phone;
  final String address;
  final String email;
  final String birthDate;
  final String gender;
  final String maritalStatusId;
  final String bloodTypeId;
  final String occupation;
  final int status;
  final String createdAt;

  Patient ({
    required this.id, 
    required this.tenantId, 
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
    required this.status,
    required this.createdAt,
  });

  factory Patient.fromJson(Map<String, dynamic> json) {
  return Patient(
    id: json['id'],
    tenantId: json['tenant_id'],
    documentTypeId: json['document_type_id'],
    documentId: json['document_id'],
    name: json['name'],
    lastName: json['last_name'],
    phone: json['phone'],
    address: json['address'],
    email: json['email'],
    birthDate: json['birth_date'],
    gender: json['gender'],
    maritalStatusId: json['marital_status_id'],
    bloodTypeId: json['blood_type_id'],
    occupation: json['occupation'],
    status: json['status'],
    createdAt: json['created_at'],
    );
  }
}
