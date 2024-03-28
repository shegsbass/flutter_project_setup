import 'package:flutter_bloc/flutter_bloc.dart';

import 'business_event.dart';
import 'business_state.dart';

class BusinessBloc extends Bloc<BusinessEvent, BusinessState> {
  BusinessBloc() : super(const BusinessState()) {
    on<NameEvent>((event, emit) {
      emit(state.copyWith(name: event.name));
    });

    on<EmailEvent>((event, emit) {
      emit(state.copyWith(email: event.email));
    });

    on<PhoneEvent>((event, emit) {
      emit(state.copyWith(phone: event.phone));
    });

    on<UsernameEvent>((event, emit) {
      emit(state.copyWith(username: event.username));
    });

    on<PasswordEvent>((event, emit){
      emit(state.copyWith(password: event.password));
    });

    on<IsDriverEvent>((event, emit) {
      emit(state.copyWith(isDriver: event.isDriver));
    });

    on<CodeEvent>((event, emit) {
      emit(state.copyWith(code: event.code));
    });

    on<AddTokenEvent>((event, emit) {
      emit(state.copyWith(token: event.token));
    });
  }

  @override
  Stream<BusinessState> mapEventToState(BusinessEvent event) async* {
    if (event is UsernameEvent) {
      // Update the username in the state
      yield state.copyWith(username: event.username);
    } else if (event is PasswordEvent) {
      // Update the password in the state
      yield state.copyWith(password: event.password);
    } else if (event is EmailEvent) {
      // Update the email in the state
      yield state.copyWith(email: event.email);
    } else if (event is PhoneEvent) {
      // Update the phone in the state
      yield state.copyWith(phone: event.phone);
    } else if (event is NameEvent) {
      // Update the name in the state
      yield state.copyWith(name: event.name);
    } else if (event is IsDriverEvent) {
      // Update isDriver in the state
      yield state.copyWith(isDriver: event.isDriver);
    } else if (event is AddTokenEvent) {
      // Update the token in the state
      yield state.copyWith(token: event.token);
    } else if (event is CodeEvent) {
      // Update the code in the state
      yield state.copyWith(code: event.code);
    }
  }
}
