import 'package:clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:clean_architecture/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import "package:flutter_test/flutter_test.dart";

//mocking creates an instance of the class where you can add functionality to the object in testing
class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  //creating usecase variable, creating mock repository to test
  GetConcreteNumberTrivia usecase;
  MockNumberTriviaRepository mockNumberTriviaRepository;
//setting up variables before running the test
  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });
  //variables to use in the test
  final testNumber = 1;
  final testNumberTrivia = NumberTrivia(number: 1, text: 'test');

  test("should get trivia for the number from that repository", () async {
    //arrange
    // When getConcreteNumberTrivia is called with any argument, always answer with
    // the Right "side" of Either containing a test NumberTrivia object.
    when(mockNumberTriviaRepository.getConcreteNumberTrivia(any))
        .thenAnswer((_) async => Right(testNumberTrivia));
    //act
    //usecase.call method is automatically called if you name the method "call"
    //this is a dart specific feature
    final result = await usecase(Params(number: testNumber));
    //assert
    //UseCase should simply return whatever was returned from the Repository
    expect(result, Right(testNumberTrivia));
    // Verify that the method has been called on the Repository
    verify(mockNumberTriviaRepository.getConcreteNumberTrivia(testNumber));
    // Only the above method should be called and nothing more.
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
