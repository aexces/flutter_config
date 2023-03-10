import 'package:dartz/dartz.dart';

import 'value_failure.dart';
import 'value_object.dart';
import 'value_validators.dart';

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String input) {
    return Name._(
      validateStringNotEmpty(input),
    );
  }
  const Name._(this.value);
}
