class UnknownExeption implements Exception {
  const UnknownExeption(this.message, this.statusCode);

  final String message;
  final int statusCode;
}
class ClientExeption implements Exception {
  const ClientExeption(this.message, this.statusCode);

  final String message;
  final int statusCode;
}
class ServerExeption implements Exception {
  const ServerExeption(this.message, this.statusCode);

  final String message;
  final int statusCode;
}