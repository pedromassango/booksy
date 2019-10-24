
import 'package:booksy/models/result_status.dart';
import 'package:meta/meta.dart';

class Result<TData, TError> {
  final TData data;
  final TError error;
  final ResultStatus status;

  Result({
    @required this.data,
    @required this.error,
    @required this.status
  });

  factory Result.success(TData data) {
    return Result(
      data: data,
      error: null,
      status: ResultStatus.success
    );
  }

  factory Result.error(TError error) {
    return Result(
      data: null,
      error: error,
      status: ResultStatus.failed
    );
  }

  factory Result.loading() {
    return Result(
      data: null,
      error: null,
      status: ResultStatus.loading
    );
  }

  factory Result.idle({TData data}) {
    return Result(
        data: data,
        error: null,
        status: ResultStatus.idle
    );
  }
}
