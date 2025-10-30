// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AppSettingsModel _$AppSettingsModelFromJson(Map<String, dynamic> json) {
  return _AppSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$AppSettingsModel {
  // General
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String? get defaultBotId => throw _privateConstructorUsedError;
  bool get showDefaultGreeting =>
      throw _privateConstructorUsedError; // Security
  String? get requestSigningSecret => throw _privateConstructorUsedError;
  bool get allowInvalidCerts => throw _privateConstructorUsedError;
  bool get redactPiiInLogs => throw _privateConstructorUsedError;
  bool get enableBiometricLock => throw _privateConstructorUsedError; // Audio
  double get playbackSpeed => throw _privateConstructorUsedError;
  bool get audioDuckingOnCalls => throw _privateConstructorUsedError;
  bool get preferEarpiece => throw _privateConstructorUsedError;
  bool get autoplayReplies => throw _privateConstructorUsedError; // Developer
  bool get verboseLogging => throw _privateConstructorUsedError;
  bool get showWebhookLogs =>
      throw _privateConstructorUsedError; // Payload Templates
  String get requestPayloadTemplateId => throw _privateConstructorUsedError;
  String get responsePayloadTemplateId => throw _privateConstructorUsedError;
  String? get customRequestTemplate => throw _privateConstructorUsedError;
  String? get customResponseTemplate =>
      throw _privateConstructorUsedError; // Other
  int get maxSessionHistory => throw _privateConstructorUsedError;
  bool get enableTelemetry => throw _privateConstructorUsedError;

  /// Serializes this AppSettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingsModelCopyWith<AppSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsModelCopyWith<$Res> {
  factory $AppSettingsModelCopyWith(
    AppSettingsModel value,
    $Res Function(AppSettingsModel) then,
  ) = _$AppSettingsModelCopyWithImpl<$Res, AppSettingsModel>;
  @useResult
  $Res call({
    ThemeMode themeMode,
    String language,
    String? defaultBotId,
    bool showDefaultGreeting,
    String? requestSigningSecret,
    bool allowInvalidCerts,
    bool redactPiiInLogs,
    bool enableBiometricLock,
    double playbackSpeed,
    bool audioDuckingOnCalls,
    bool preferEarpiece,
    bool autoplayReplies,
    bool verboseLogging,
    bool showWebhookLogs,
    String requestPayloadTemplateId,
    String responsePayloadTemplateId,
    String? customRequestTemplate,
    String? customResponseTemplate,
    int maxSessionHistory,
    bool enableTelemetry,
  });
}

/// @nodoc
class _$AppSettingsModelCopyWithImpl<$Res, $Val extends AppSettingsModel>
    implements $AppSettingsModelCopyWith<$Res> {
  _$AppSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? language = null,
    Object? defaultBotId = freezed,
    Object? showDefaultGreeting = null,
    Object? requestSigningSecret = freezed,
    Object? allowInvalidCerts = null,
    Object? redactPiiInLogs = null,
    Object? enableBiometricLock = null,
    Object? playbackSpeed = null,
    Object? audioDuckingOnCalls = null,
    Object? preferEarpiece = null,
    Object? autoplayReplies = null,
    Object? verboseLogging = null,
    Object? showWebhookLogs = null,
    Object? requestPayloadTemplateId = null,
    Object? responsePayloadTemplateId = null,
    Object? customRequestTemplate = freezed,
    Object? customResponseTemplate = freezed,
    Object? maxSessionHistory = null,
    Object? enableTelemetry = null,
  }) {
    return _then(
      _value.copyWith(
            themeMode: null == themeMode
                ? _value.themeMode
                : themeMode // ignore: cast_nullable_to_non_nullable
                      as ThemeMode,
            language: null == language
                ? _value.language
                : language // ignore: cast_nullable_to_non_nullable
                      as String,
            defaultBotId: freezed == defaultBotId
                ? _value.defaultBotId
                : defaultBotId // ignore: cast_nullable_to_non_nullable
                      as String?,
            showDefaultGreeting: null == showDefaultGreeting
                ? _value.showDefaultGreeting
                : showDefaultGreeting // ignore: cast_nullable_to_non_nullable
                      as bool,
            requestSigningSecret: freezed == requestSigningSecret
                ? _value.requestSigningSecret
                : requestSigningSecret // ignore: cast_nullable_to_non_nullable
                      as String?,
            allowInvalidCerts: null == allowInvalidCerts
                ? _value.allowInvalidCerts
                : allowInvalidCerts // ignore: cast_nullable_to_non_nullable
                      as bool,
            redactPiiInLogs: null == redactPiiInLogs
                ? _value.redactPiiInLogs
                : redactPiiInLogs // ignore: cast_nullable_to_non_nullable
                      as bool,
            enableBiometricLock: null == enableBiometricLock
                ? _value.enableBiometricLock
                : enableBiometricLock // ignore: cast_nullable_to_non_nullable
                      as bool,
            playbackSpeed: null == playbackSpeed
                ? _value.playbackSpeed
                : playbackSpeed // ignore: cast_nullable_to_non_nullable
                      as double,
            audioDuckingOnCalls: null == audioDuckingOnCalls
                ? _value.audioDuckingOnCalls
                : audioDuckingOnCalls // ignore: cast_nullable_to_non_nullable
                      as bool,
            preferEarpiece: null == preferEarpiece
                ? _value.preferEarpiece
                : preferEarpiece // ignore: cast_nullable_to_non_nullable
                      as bool,
            autoplayReplies: null == autoplayReplies
                ? _value.autoplayReplies
                : autoplayReplies // ignore: cast_nullable_to_non_nullable
                      as bool,
            verboseLogging: null == verboseLogging
                ? _value.verboseLogging
                : verboseLogging // ignore: cast_nullable_to_non_nullable
                      as bool,
            showWebhookLogs: null == showWebhookLogs
                ? _value.showWebhookLogs
                : showWebhookLogs // ignore: cast_nullable_to_non_nullable
                      as bool,
            requestPayloadTemplateId: null == requestPayloadTemplateId
                ? _value.requestPayloadTemplateId
                : requestPayloadTemplateId // ignore: cast_nullable_to_non_nullable
                      as String,
            responsePayloadTemplateId: null == responsePayloadTemplateId
                ? _value.responsePayloadTemplateId
                : responsePayloadTemplateId // ignore: cast_nullable_to_non_nullable
                      as String,
            customRequestTemplate: freezed == customRequestTemplate
                ? _value.customRequestTemplate
                : customRequestTemplate // ignore: cast_nullable_to_non_nullable
                      as String?,
            customResponseTemplate: freezed == customResponseTemplate
                ? _value.customResponseTemplate
                : customResponseTemplate // ignore: cast_nullable_to_non_nullable
                      as String?,
            maxSessionHistory: null == maxSessionHistory
                ? _value.maxSessionHistory
                : maxSessionHistory // ignore: cast_nullable_to_non_nullable
                      as int,
            enableTelemetry: null == enableTelemetry
                ? _value.enableTelemetry
                : enableTelemetry // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppSettingsModelImplCopyWith<$Res>
    implements $AppSettingsModelCopyWith<$Res> {
  factory _$$AppSettingsModelImplCopyWith(
    _$AppSettingsModelImpl value,
    $Res Function(_$AppSettingsModelImpl) then,
  ) = __$$AppSettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ThemeMode themeMode,
    String language,
    String? defaultBotId,
    bool showDefaultGreeting,
    String? requestSigningSecret,
    bool allowInvalidCerts,
    bool redactPiiInLogs,
    bool enableBiometricLock,
    double playbackSpeed,
    bool audioDuckingOnCalls,
    bool preferEarpiece,
    bool autoplayReplies,
    bool verboseLogging,
    bool showWebhookLogs,
    String requestPayloadTemplateId,
    String responsePayloadTemplateId,
    String? customRequestTemplate,
    String? customResponseTemplate,
    int maxSessionHistory,
    bool enableTelemetry,
  });
}

/// @nodoc
class __$$AppSettingsModelImplCopyWithImpl<$Res>
    extends _$AppSettingsModelCopyWithImpl<$Res, _$AppSettingsModelImpl>
    implements _$$AppSettingsModelImplCopyWith<$Res> {
  __$$AppSettingsModelImplCopyWithImpl(
    _$AppSettingsModelImpl _value,
    $Res Function(_$AppSettingsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? language = null,
    Object? defaultBotId = freezed,
    Object? showDefaultGreeting = null,
    Object? requestSigningSecret = freezed,
    Object? allowInvalidCerts = null,
    Object? redactPiiInLogs = null,
    Object? enableBiometricLock = null,
    Object? playbackSpeed = null,
    Object? audioDuckingOnCalls = null,
    Object? preferEarpiece = null,
    Object? autoplayReplies = null,
    Object? verboseLogging = null,
    Object? showWebhookLogs = null,
    Object? requestPayloadTemplateId = null,
    Object? responsePayloadTemplateId = null,
    Object? customRequestTemplate = freezed,
    Object? customResponseTemplate = freezed,
    Object? maxSessionHistory = null,
    Object? enableTelemetry = null,
  }) {
    return _then(
      _$AppSettingsModelImpl(
        themeMode: null == themeMode
            ? _value.themeMode
            : themeMode // ignore: cast_nullable_to_non_nullable
                  as ThemeMode,
        language: null == language
            ? _value.language
            : language // ignore: cast_nullable_to_non_nullable
                  as String,
        defaultBotId: freezed == defaultBotId
            ? _value.defaultBotId
            : defaultBotId // ignore: cast_nullable_to_non_nullable
                  as String?,
        showDefaultGreeting: null == showDefaultGreeting
            ? _value.showDefaultGreeting
            : showDefaultGreeting // ignore: cast_nullable_to_non_nullable
                  as bool,
        requestSigningSecret: freezed == requestSigningSecret
            ? _value.requestSigningSecret
            : requestSigningSecret // ignore: cast_nullable_to_non_nullable
                  as String?,
        allowInvalidCerts: null == allowInvalidCerts
            ? _value.allowInvalidCerts
            : allowInvalidCerts // ignore: cast_nullable_to_non_nullable
                  as bool,
        redactPiiInLogs: null == redactPiiInLogs
            ? _value.redactPiiInLogs
            : redactPiiInLogs // ignore: cast_nullable_to_non_nullable
                  as bool,
        enableBiometricLock: null == enableBiometricLock
            ? _value.enableBiometricLock
            : enableBiometricLock // ignore: cast_nullable_to_non_nullable
                  as bool,
        playbackSpeed: null == playbackSpeed
            ? _value.playbackSpeed
            : playbackSpeed // ignore: cast_nullable_to_non_nullable
                  as double,
        audioDuckingOnCalls: null == audioDuckingOnCalls
            ? _value.audioDuckingOnCalls
            : audioDuckingOnCalls // ignore: cast_nullable_to_non_nullable
                  as bool,
        preferEarpiece: null == preferEarpiece
            ? _value.preferEarpiece
            : preferEarpiece // ignore: cast_nullable_to_non_nullable
                  as bool,
        autoplayReplies: null == autoplayReplies
            ? _value.autoplayReplies
            : autoplayReplies // ignore: cast_nullable_to_non_nullable
                  as bool,
        verboseLogging: null == verboseLogging
            ? _value.verboseLogging
            : verboseLogging // ignore: cast_nullable_to_non_nullable
                  as bool,
        showWebhookLogs: null == showWebhookLogs
            ? _value.showWebhookLogs
            : showWebhookLogs // ignore: cast_nullable_to_non_nullable
                  as bool,
        requestPayloadTemplateId: null == requestPayloadTemplateId
            ? _value.requestPayloadTemplateId
            : requestPayloadTemplateId // ignore: cast_nullable_to_non_nullable
                  as String,
        responsePayloadTemplateId: null == responsePayloadTemplateId
            ? _value.responsePayloadTemplateId
            : responsePayloadTemplateId // ignore: cast_nullable_to_non_nullable
                  as String,
        customRequestTemplate: freezed == customRequestTemplate
            ? _value.customRequestTemplate
            : customRequestTemplate // ignore: cast_nullable_to_non_nullable
                  as String?,
        customResponseTemplate: freezed == customResponseTemplate
            ? _value.customResponseTemplate
            : customResponseTemplate // ignore: cast_nullable_to_non_nullable
                  as String?,
        maxSessionHistory: null == maxSessionHistory
            ? _value.maxSessionHistory
            : maxSessionHistory // ignore: cast_nullable_to_non_nullable
                  as int,
        enableTelemetry: null == enableTelemetry
            ? _value.enableTelemetry
            : enableTelemetry // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppSettingsModelImpl implements _AppSettingsModel {
  const _$AppSettingsModelImpl({
    this.themeMode = ThemeMode.system,
    this.language = 'en',
    this.defaultBotId,
    this.showDefaultGreeting = true,
    this.requestSigningSecret,
    this.allowInvalidCerts = false,
    this.redactPiiInLogs = true,
    this.enableBiometricLock = false,
    this.playbackSpeed = 1.0,
    this.audioDuckingOnCalls = true,
    this.preferEarpiece = false,
    this.autoplayReplies = true,
    this.verboseLogging = false,
    this.showWebhookLogs = false,
    this.requestPayloadTemplateId = 'default',
    this.responsePayloadTemplateId = 'default',
    this.customRequestTemplate,
    this.customResponseTemplate,
    this.maxSessionHistory = 10,
    this.enableTelemetry = false,
  });

  factory _$AppSettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingsModelImplFromJson(json);

  // General
  @override
  @JsonKey()
  final ThemeMode themeMode;
  @override
  @JsonKey()
  final String language;
  @override
  final String? defaultBotId;
  @override
  @JsonKey()
  final bool showDefaultGreeting;
  // Security
  @override
  final String? requestSigningSecret;
  @override
  @JsonKey()
  final bool allowInvalidCerts;
  @override
  @JsonKey()
  final bool redactPiiInLogs;
  @override
  @JsonKey()
  final bool enableBiometricLock;
  // Audio
  @override
  @JsonKey()
  final double playbackSpeed;
  @override
  @JsonKey()
  final bool audioDuckingOnCalls;
  @override
  @JsonKey()
  final bool preferEarpiece;
  @override
  @JsonKey()
  final bool autoplayReplies;
  // Developer
  @override
  @JsonKey()
  final bool verboseLogging;
  @override
  @JsonKey()
  final bool showWebhookLogs;
  // Payload Templates
  @override
  @JsonKey()
  final String requestPayloadTemplateId;
  @override
  @JsonKey()
  final String responsePayloadTemplateId;
  @override
  final String? customRequestTemplate;
  @override
  final String? customResponseTemplate;
  // Other
  @override
  @JsonKey()
  final int maxSessionHistory;
  @override
  @JsonKey()
  final bool enableTelemetry;

  @override
  String toString() {
    return 'AppSettingsModel(themeMode: $themeMode, language: $language, defaultBotId: $defaultBotId, showDefaultGreeting: $showDefaultGreeting, requestSigningSecret: $requestSigningSecret, allowInvalidCerts: $allowInvalidCerts, redactPiiInLogs: $redactPiiInLogs, enableBiometricLock: $enableBiometricLock, playbackSpeed: $playbackSpeed, audioDuckingOnCalls: $audioDuckingOnCalls, preferEarpiece: $preferEarpiece, autoplayReplies: $autoplayReplies, verboseLogging: $verboseLogging, showWebhookLogs: $showWebhookLogs, requestPayloadTemplateId: $requestPayloadTemplateId, responsePayloadTemplateId: $responsePayloadTemplateId, customRequestTemplate: $customRequestTemplate, customResponseTemplate: $customResponseTemplate, maxSessionHistory: $maxSessionHistory, enableTelemetry: $enableTelemetry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsModelImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.defaultBotId, defaultBotId) ||
                other.defaultBotId == defaultBotId) &&
            (identical(other.showDefaultGreeting, showDefaultGreeting) ||
                other.showDefaultGreeting == showDefaultGreeting) &&
            (identical(other.requestSigningSecret, requestSigningSecret) ||
                other.requestSigningSecret == requestSigningSecret) &&
            (identical(other.allowInvalidCerts, allowInvalidCerts) ||
                other.allowInvalidCerts == allowInvalidCerts) &&
            (identical(other.redactPiiInLogs, redactPiiInLogs) ||
                other.redactPiiInLogs == redactPiiInLogs) &&
            (identical(other.enableBiometricLock, enableBiometricLock) ||
                other.enableBiometricLock == enableBiometricLock) &&
            (identical(other.playbackSpeed, playbackSpeed) ||
                other.playbackSpeed == playbackSpeed) &&
            (identical(other.audioDuckingOnCalls, audioDuckingOnCalls) ||
                other.audioDuckingOnCalls == audioDuckingOnCalls) &&
            (identical(other.preferEarpiece, preferEarpiece) ||
                other.preferEarpiece == preferEarpiece) &&
            (identical(other.autoplayReplies, autoplayReplies) ||
                other.autoplayReplies == autoplayReplies) &&
            (identical(other.verboseLogging, verboseLogging) ||
                other.verboseLogging == verboseLogging) &&
            (identical(other.showWebhookLogs, showWebhookLogs) ||
                other.showWebhookLogs == showWebhookLogs) &&
            (identical(
                  other.requestPayloadTemplateId,
                  requestPayloadTemplateId,
                ) ||
                other.requestPayloadTemplateId == requestPayloadTemplateId) &&
            (identical(
                  other.responsePayloadTemplateId,
                  responsePayloadTemplateId,
                ) ||
                other.responsePayloadTemplateId == responsePayloadTemplateId) &&
            (identical(other.customRequestTemplate, customRequestTemplate) ||
                other.customRequestTemplate == customRequestTemplate) &&
            (identical(other.customResponseTemplate, customResponseTemplate) ||
                other.customResponseTemplate == customResponseTemplate) &&
            (identical(other.maxSessionHistory, maxSessionHistory) ||
                other.maxSessionHistory == maxSessionHistory) &&
            (identical(other.enableTelemetry, enableTelemetry) ||
                other.enableTelemetry == enableTelemetry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    themeMode,
    language,
    defaultBotId,
    showDefaultGreeting,
    requestSigningSecret,
    allowInvalidCerts,
    redactPiiInLogs,
    enableBiometricLock,
    playbackSpeed,
    audioDuckingOnCalls,
    preferEarpiece,
    autoplayReplies,
    verboseLogging,
    showWebhookLogs,
    requestPayloadTemplateId,
    responsePayloadTemplateId,
    customRequestTemplate,
    customResponseTemplate,
    maxSessionHistory,
    enableTelemetry,
  ]);

  /// Create a copy of AppSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsModelImplCopyWith<_$AppSettingsModelImpl> get copyWith =>
      __$$AppSettingsModelImplCopyWithImpl<_$AppSettingsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingsModelImplToJson(this);
  }
}

abstract class _AppSettingsModel implements AppSettingsModel {
  const factory _AppSettingsModel({
    final ThemeMode themeMode,
    final String language,
    final String? defaultBotId,
    final bool showDefaultGreeting,
    final String? requestSigningSecret,
    final bool allowInvalidCerts,
    final bool redactPiiInLogs,
    final bool enableBiometricLock,
    final double playbackSpeed,
    final bool audioDuckingOnCalls,
    final bool preferEarpiece,
    final bool autoplayReplies,
    final bool verboseLogging,
    final bool showWebhookLogs,
    final String requestPayloadTemplateId,
    final String responsePayloadTemplateId,
    final String? customRequestTemplate,
    final String? customResponseTemplate,
    final int maxSessionHistory,
    final bool enableTelemetry,
  }) = _$AppSettingsModelImpl;

  factory _AppSettingsModel.fromJson(Map<String, dynamic> json) =
      _$AppSettingsModelImpl.fromJson;

  // General
  @override
  ThemeMode get themeMode;
  @override
  String get language;
  @override
  String? get defaultBotId;
  @override
  bool get showDefaultGreeting; // Security
  @override
  String? get requestSigningSecret;
  @override
  bool get allowInvalidCerts;
  @override
  bool get redactPiiInLogs;
  @override
  bool get enableBiometricLock; // Audio
  @override
  double get playbackSpeed;
  @override
  bool get audioDuckingOnCalls;
  @override
  bool get preferEarpiece;
  @override
  bool get autoplayReplies; // Developer
  @override
  bool get verboseLogging;
  @override
  bool get showWebhookLogs; // Payload Templates
  @override
  String get requestPayloadTemplateId;
  @override
  String get responsePayloadTemplateId;
  @override
  String? get customRequestTemplate;
  @override
  String? get customResponseTemplate; // Other
  @override
  int get maxSessionHistory;
  @override
  bool get enableTelemetry;

  /// Create a copy of AppSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingsModelImplCopyWith<_$AppSettingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
