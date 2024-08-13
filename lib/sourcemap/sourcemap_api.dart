void uploadSourcemap({
  required String appId,
  required String token,
  required String path,
  required String uri,
}) {
  print('Uploading...');
  // curl -X POST 'https://api.raygun.com/v3/applications/{your-application-identifier}/source-maps' \
  // -H 'Authorization: Bearer YOUR_PERSONAL_ACCESS_TOKEN' \
  // -H 'Content-Type: multipart/form-data' \
  // -F 'file=@path_to_your_source_map_file.map' \
  // -F 'uri=your_source_map_uri'
}
