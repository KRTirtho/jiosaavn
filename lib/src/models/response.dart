class JioSaavnResponse<T> {
  final String status;
  final String? message;
  final T? data;

  JioSaavnResponse({required this.status, this.message, this.data});

  factory JioSaavnResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) dataFromJson,
  ) {
    return JioSaavnResponse(
      status: json['status'],
      message: json['message'],
      data: dataFromJson(json['data']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'data': (data as dynamic)?.toJson(),
    };
  }
}
