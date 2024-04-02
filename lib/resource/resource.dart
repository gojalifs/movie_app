sealed class Resource {
  final dynamic data;
  final dynamic errorMessage;

  Resource(this.data, this.errorMessage);
}

class LoadingState extends Resource {
  LoadingState(super.data, super.errorMessage);
}

class SuccessState extends Resource {
  SuccessState(super.data, super.errorMessage);
}

class ErrorState extends Resource {
  ErrorState(super.data, super.errorMessage);
}
