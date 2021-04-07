import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  Failure([List properties = const <dynamic>[]]) : super();

  @override
  List<dynamic> get props => [true];
}

class ServerFailure extends Failure {
  
}

class CacheFailure extends Failure {
  
}
