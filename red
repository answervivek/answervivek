@Configuration
public class ResponseDataUtil {
  private static String appVersion;

  private static final String VALUE = "value";
  private static final String VANILLA = "vanilla";
  private static final String VERSION = "version";

  ResponseDataUtil() {
  }

  /**
   * Gets response.
   *
   * @param outputData the output data
   * @return the response
   */
  public static ResponseDataHandler getResponse(Object outputData) {
    ResponseDataHandler response = new ResponseDataHandler();
    Map<String, String> responseCode = new HashMap<>();
    responseCode.put("code", "200");
    responseCode.put(VALUE, "SUCCESS");
    response.setStatus(responseCode);
    response.setData(outputData);
    Map<String, String> version = new HashMap<>();
    version.put("name", VANILLA);
    version.put(VERSION, appVersion);
    response.setVersion(version);
    return response;
  }

  /**
   * Gets response.
   *
   * @param outputData the output data
   * @param isError    the is error
   * @return the response
   */
  public static ResponseDataHandler getResponse(Object outputData, boolean isError) {
    ResponseDataHandler response = new ResponseDataHandler();
    Map<String, String> responseCode = new HashMap<>();
    responseCode.put("code", "200");
    responseCode.put(VALUE, "SUCCESS");
    response.setStatus(responseCode);
    response.setData(outputData);
    response.setError(isError);
    Map<String, String> version = new HashMap<>();
    version.put("name", VANILLA);
    version.put(VERSION, appVersion);
    response.setVersion(version);
    return response;
  }

  /**
   * Gets response.
   *
   * @param outputData the output data
   * @param code       the code
   * @param comment    the comment
   * @return the response
   */
  public static ResponseDataHandler getResponse(Object outputData, int code, String comment) {
    ResponseDataHandler response = new ResponseDataHandler();
    Map<String, String> responseCode = new HashMap<>();
    responseCode.put("code", String.valueOf(code));
    responseCode.put(VALUE, comment);
    response.setStatus(responseCode);
    response.setData(outputData);
    Map<String, String> version = new HashMap<>();
    version.put("name", VANILLA);
    version.put(VERSION, appVersion);
    response.setVersion(version);
    return response;
  }

  /**
   * Gets response.
   *
   * @param outputData the output data
   * @param code       the code
   * @param comment    the comment
   * @param isError    the is error
   * @return the response
   */
  public static ResponseDataHandler getResponse(Object outputData, int code, String comment, boolean isError) {
    ResponseDataHandler response = new ResponseDataHandler();
    Map<String, String> responseCode = new HashMap<>();
    responseCode.put("code", String.valueOf(code));
    responseCode.put(VALUE, comment);
    response.setStatus(responseCode);
    response.setData(outputData);
    response.setError(isError);
    Map<String, String> version = new HashMap<>();
    version.put("name", VANILLA);
    version.put(VERSION, appVersion);
    response.setVersion(version);
    return response;
  }

  /**
   * Gets response.
   *
   * @param throwable the throwable
   * @return the response
   */
  public static ResponseDataHandler getResponse(Throwable throwable) {
    ResponseDataHandler response = new ResponseDataHandler();
    Map<String, String> responseCode = new HashMap<>();
    responseCode.put("code", "404");
    responseCode.put(VALUE, "ERROR");
    response.setStatus(responseCode);
    response.setData(throwable.getMessage());
    response.setError(true);
    Map<String, String> version = new HashMap<>();
    version.put("name", VANILLA);
    version.put(VERSION, appVersion);
    response.setVersion(version);
    return response;
  }

  /**
   * Sets private name.
   *
   * @param privateName the private name
   */
  @Value("${appVersion}")
  public static void setPrivateName(String privateName) {
    appVersion = privateName;
  }
}
