import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/number_trivia.dart';

//creating a repository for NumberTrivia
abstract class NumberTriviaRepository {
  //either is a functional programming concept.
  //Type Either contains 2 more types inside.
  //Type on left and right determines the type for either condition
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
