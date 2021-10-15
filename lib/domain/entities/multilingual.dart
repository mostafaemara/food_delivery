import 'package:equatable/equatable.dart';

class Multilingual extends Equatable {
  final String english;
  final String arabic;

  const Multilingual({required this.english, required this.arabic});

  @override
  List<Object> get props => [english, arabic];
}
