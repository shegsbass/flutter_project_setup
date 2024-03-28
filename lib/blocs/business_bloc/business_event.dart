import 'package:equatable/equatable.dart';

class BusinessEvent extends Equatable{
  const BusinessEvent();
  @override
  List<Object> get props => [];
}

class PasswordEvent extends BusinessEvent{
  final String password;
  const PasswordEvent({required this.password});
  @override
  List<Object> get props => [password];
}

class NameEvent extends BusinessEvent {
  final String name;
  const NameEvent({required this.name});
  @override
  List<Object> get props => [name];
}


class EmailEvent extends BusinessEvent {
  final String email;
  const EmailEvent({required this.email});
  @override
  List<Object> get props => [email];
}

class PhoneEvent extends BusinessEvent {
  final String phone;
  const PhoneEvent({required this.phone});
  @override
  List<Object> get props => [phone];
}

class UsernameEvent extends BusinessEvent {
  final String username;
  const UsernameEvent({required this.username});
  @override
  List<Object> get props => [username];
}

class IsDriverEvent extends BusinessEvent {
  final bool isDriver;
  const IsDriverEvent({required this.isDriver});
}

class AddTokenEvent extends BusinessEvent {
  final String token;
  const AddTokenEvent({required this.token});
  @override
  List<Object> get props => [token];
}

class CodeEvent extends BusinessEvent {
  final String code;
  const CodeEvent({required this.code});
  @override
  List<Object> get props => [code];
}