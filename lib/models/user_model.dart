import 'package:flutter/foundation.dart';

class User {
  final int id;
  final String firstName;
  final String lastName;
  final String imageUrl;

  User(
      {@required this.id,
      @required this.firstName,
      @required this.lastName,
      @required this.imageUrl});
}
