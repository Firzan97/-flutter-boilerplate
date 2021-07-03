class ResultStatus {
  ResultStatus({this.isSuccess, this.message, this.data});

  final bool isSuccess;
  final String message;
  dynamic data;

  String toString() {
    return "[AuthResult]: success = $isSuccess\n" +
        "[AuthResult]: message = $message";
  }
}
