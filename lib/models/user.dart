import 'document_type.dart';
import 'package:vehicles_app/models/vehicle.dart';

class User {
  String firstName = '';
  String lastName = '';
  DocumentType documentType = DocumentType(id: 0, description: '');
  String document = '';
  String address = '';
  String imageId = '';
  String imageFullPath = '';
  int userType = 0;
  String fullName = '';
  List<Vehicle> vehicles = [];
  int vehiclesCount = 0;
  String id = '';
  String userName = '';
  String email = '';
  String phoneNumber = '';

  User({
    required this.firstName,
    required this.lastName,
    required this.documentType,
    required this.document,
    required this.address,
    required this.imageId,
    required this.imageFullPath,
    required this.userType,
    required this.fullName,
    required this.vehicles,
    required this.vehiclesCount,
    required this.id,
    required this.userName,
    required this.email,
    required this.phoneNumber,   
  });

  User.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    documentType = DocumentType.fromJson(json['documentType']);
    document = json['document'];
    address = json['address'];
    imageId = json['imageId'];
    imageFullPath = json['imageFullPath'];
    userType = json['userType'];
    fullName = json['fullName'];
    if (json['vehicles'] != null) {
      vehicles = [];
      json['vehicles'].forEach((v) {
        vehicles.add(new Vehicle.fromJson(v));
      });
    }
    vehiclesCount = json['vehiclesCount'];
    id = json['id'];
    userName = json['userName'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['documentType'] = this.documentType.toJson();
    data['document'] = this.document;
    data['address'] = this.address;
    data['imageId'] = this.imageId;
    data['imageFullPath'] = this.imageFullPath;
    data['userType'] = this.userType;
    data['fullName'] = this.fullName;
    data['vehicles'] = this.vehicles.map((v) => v.toJson()).toList();
    data['vehiclesCount'] = this.vehiclesCount;
    data['id'] = this.id;
    data['userName'] = this.userName;
    data['email'] = this.email;
    data['phoneNumber'] = this.phoneNumber;
    return data;
  }
}