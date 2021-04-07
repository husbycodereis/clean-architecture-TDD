import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

//equatable object makes two objects with same values to an equal object
class NumberTrivia extends Equatable {
  final String text;
  final int number;
  //need to pass the values with super to Equatable object for equatable to work
  NumberTrivia({@required this.text,@required this.number});

  @override
  // TODO: implement props
  List<Object> get props => [text,number];
  
}
