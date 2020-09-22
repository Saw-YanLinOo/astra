import 'dart:io';

import 'package:astra/models/message.dart';
import 'package:astra/models/user.dart';
import 'package:astra/provider/image_upload_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:astra/resources/firebase_methods.dart';
import 'package:flutter/cupertino.dart';

class FirebaseRepository {
  FirebaseMethods _firebaseMethods = FirebaseMethods();

  Future<FirebaseUser> getCurrentUser() => _firebaseMethods.getCurrentUser();

  Future<FirebaseUser> signIn() => _firebaseMethods.signIn();

  Future<bool> authenticateUser(FirebaseUser user) =>
      _firebaseMethods.authenticateUser(user);

  Future<void> addDataToDb(FirebaseUser user) => _firebaseMethods.addDataToDb(user);

  Future<void> signOut() => _firebaseMethods.signout();

  Future<User> getUserDetails() => _firebaseMethods.getUserDetails();

  Future<List<User>> fetchAllUsers(FirebaseUser user) => _firebaseMethods.fetchAllUsers(user);

  Future<void> addMessageToDb(Message message, User sender, User reciever) => _firebaseMethods.addMessageToDb(message, sender, reciever);

  void uploadImage({@required File image, @required String receieverId, @required senderId,@required ImageUploadProvider imageUploadProvider}) => _firebaseMethods.uploadImage(image, receieverId, senderId, imageUploadProvider);
}