import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserProvider extends ChangeNotifier {
  User? _user;

  UserProvider() {
    FirebaseAuth.instance.authStateChanges().listen((User? user){
 _user = user;
 notifyListeners();
    });
  }
 //get para verificar se usuario esta logado - retorna true ou false
  bool get isAuthenticated => _user != null;

 //get para obter os dados do usuario
  User? get user => _user;

 //função para deslogar o usuario
  Future<void> signOut() async{
    await FirebaseAuth.instance.signOut();
  }

}