part of 'user_bloc.dart';

@immutable
abstract class UserEvent {

}

class ActivateUser extends UserEvent {
  final User user;

  ActivateUser(this.user);
}

// event per canviat l'edat de l'usuari
class CanviarEdatUsuari extends UserEvent {
  final int edat;

  CanviarEdatUsuari(this.edat);
}

class AfegirProfession extends UserEvent {
  final String profession;

  AfegirProfession(this.profession);
}

class EliminarUsuari extends UserEvent {
  
}