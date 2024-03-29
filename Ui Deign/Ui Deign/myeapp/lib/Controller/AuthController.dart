import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';
import 'package:myeapp/consts/FirbaseAuth.dart';
import 'package:velocity_x/velocity_x.dart';

class AuthController extends GetxController{
  var emailcontroller =TextEditingController();
  var passcontroller = TextEditingController();

  var isloading = false.obs;

  Future <UserCredential?> LoginMethod({context}) async{
    UserCredential? userCredential;
    try {
      await auth.signInWithEmailAndPassword(email:emailcontroller.text,password:passcontroller.text);

    }on FirebaseAuthException catch (e) {
      VxToast .show(context, msg: e.toString());
    }
    return  userCredential;
  }
  storeUserData({name,password,email})async {
    DocumentReference store = await firestore.collection(UserCollection).doc(currentUser!.uid);
    store.set({'name':name,'email':email,'password':password,'imageurl':'','id':currentUser!.uid});
  }

  Future<UserCredential?> siginMethod({email, password, context}) async {
    UserCredential? userCredential;
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }
  SignoutMethod({context})async{
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }

}