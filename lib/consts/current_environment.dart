enum CurrentEnvironmentEnum {
  dev("DEV"),
  prod("PROD");

  final String value;

  const CurrentEnvironmentEnum(this.value);

  String get storageName =>
      this == CurrentEnvironmentEnum.dev ? "development" : "production";
}