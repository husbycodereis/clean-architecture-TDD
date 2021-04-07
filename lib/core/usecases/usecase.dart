import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failures.dart';

//abstracting the usecase by using an abstract class
//type is used to define type of the usecase
//Params is for use
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
class NoParams extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}