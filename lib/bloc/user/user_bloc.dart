
import 'package:flutter/material.dart';

import '../../models/user.dart';
import 'package:bloc/bloc.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUser>((event, emit) {
      //print('ActivateUser called');
      emit(UserSetState(event.user));

    });
    on<CanviarEdatUsuari>((event, emit) {
      //print('CanviarEdatUsuari called');
      if(!state.existUser) return;
      emit(UserSetState(state.user!.copyWith(edad: event.edat)));
    });
    on<AfegirProfession>(((event, emit) {
      if(!state.existUser) return;
      final professions = [...state.user!.profesiones, event.profession];

      emit(UserSetState(state.user!.copyWith(profesiones: professions)));
    
    }));

    on<EliminarUsuari>((event, emit) {
      emit(const UserInitialState());
    },
    );
  }
}