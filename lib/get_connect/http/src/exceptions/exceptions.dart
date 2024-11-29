class GetHttpException implements Exception {
  final String message;

  final Uri? uri;

  GetHttpException(this.message, [this.uri]);

  @override
  String toString() => message;
}

class GraphQLError {
  GraphQLError({this.code, this.message, this.extensions});
  final String? message;
  final String? code;
  final Map<String, dynamic>? extensions;

  @override
  String toString() =>
      'GETCONNECT ERROR:\n\tcode:$code\n\tmessage:$message\n\textensions:$extensions';
}

class UnauthorizedException implements Exception {
  @override
  String toString() {
    return 'Operation Unauthorized';
  }
}

class UnexpectedFormat implements Exception {
  final String message;
  UnexpectedFormat(this.message);
  @override
  String toString() {
    return 'Unexpected format: $message';
  }
}
