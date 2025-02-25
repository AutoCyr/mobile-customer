import 'package:freezed_annotation/freezed_annotation.dart';

part 'success.freezed.dart';
part 'success.g.dart';

@freezed
class Success with _$Success {
  const factory Success({
    @JsonKey(name: 'error') required bool error,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'data') required dynamic data,
  }) = _Success;

  factory Success.fromJson(Map<String, dynamic> json) => _$SuccessFromJson(json);
}
