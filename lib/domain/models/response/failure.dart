import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';
part 'failure.g.dart';

@freezed
class Failure with _$Failure {
  const factory Failure({
    @JsonKey(name: 'error') required bool error,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'except') required dynamic except,
  }) = _Failure;

  factory Failure.fromJson(Map<String, dynamic> json) => _$FailureFromJson(json);
}
