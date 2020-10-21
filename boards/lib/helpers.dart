String getProtocol(String uri) {
  return uri.split(':')[0];
}

String firebasePath(String uri) {
  List<String> parts = uri.split('/');
  return parts.getRange(3, parts.length).join('/');
}