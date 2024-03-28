import 'package:equatable/equatable.dart';

class BusinessState extends Equatable {
  final String? token;
  final String? name;
  final String? email;
  final String? phone;
  final String? username;
  final String? password;
  final bool? isDriver;
  final String? code;

  const BusinessState({
    this.token = '',
    this.name = '',
    this.email = '',
    this.phone = '',
    this.username = '',
    this.password = '',
    this.isDriver = false,
    this.code = '',
  });

  BusinessState copyWith({
    String? token,
    String? name,
    String? email,
    String? phone,
    String? username,
    String? password,
    bool? isDriver,
    String? code,
  }) {
    return BusinessState(
      token: token ?? this.token,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      username: username ?? this.username,
      password: password ?? this.password,
      isDriver: isDriver ?? this.isDriver,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [
    password,
    token,
    name,
    username,
    email,
    phone,
    isDriver,
    code,
  ];
}
