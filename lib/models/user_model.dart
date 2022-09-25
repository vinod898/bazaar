class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;

  UserModel({this.email, this.firstName, this.secondName, this.uid});

// from database
  factory UserModel.fromMap(map) {
    return UserModel(
        email: map['email'],
        firstName: map['firstName'],
        secondName: map['secondName'],
        uid: map['uid']);
  }
  // sending data to server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'firstName': firstName,
      'secondName': secondName,
      'email': email
    };
  }
}
