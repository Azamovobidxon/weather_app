abstract final class ApiConst {
  /// weather API ------------------------
  static String weatherPath(String city) => "/VisualCrossingWebServices/rest/services/timeline/$city";

  static Map<String, String> weatherParams({
    required String uGroup,
    required String key,
  }) =>
      {
        "unitGroup": uGroup,
        "key": key,
        "contentType": "json",
      };
    /// ---------------------------------------

   /// Geo with IP ----------------------------
  static const geoPath = "/ipgeo";

  static Map<String, String> geoParams(String apiKey) => {
        "apiKey": apiKey,
      };
  /// ----------------------------------------
}
//"?unitGroup=us&key=HX4CGDZRV4UEJURH9Z2ZQ4FUJ&contentType=json"
// unitGroup=us
// key= HX4CGDZRV4UEJURH9Z2ZQ4FUJ&contentType
