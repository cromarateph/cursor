// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_instance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BotInstanceModel _$BotInstanceModelFromJson(Map<String, dynamic> json) {
  return _BotInstanceModel.fromJson(json);
}

/// @nodoc
mixin _$BotInstanceModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get webhookUrl => throw _privateConstructorUsedError;
  String get httpMethod => throw _privateConstructorUsedError;
  Map<String, String> get customHeaders => throw _privateConstructorUsedError;
  int get requestTimeoutMs => throw _privateConstructorUsedError;
  RetryPolicy get retryPolicy => throw _privateConstructorUsedError;
  String get payloadTemplateId => throw _privateConstructorUsedError;
  String get responseTemplateId => throw _privateConstructorUsedError;
  double get voicePlaybackSpeed => throw _privateConstructorUsedError;
  int get sessionTTL => throw _privateConstructorUsedError; // 1 hour default
  int? get autoResetOnInactivityMs => throw _privateConstructorUsedError;
  String? get defaultGreeting => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this BotInstanceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BotInstanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BotInstanceModelCopyWith<BotInstanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotInstanceModelCopyWith<$Res> {
  factory $BotInstanceModelCopyWith(
    BotInstanceModel value,
    $Res Function(BotInstanceModel) then,
  ) = _$BotInstanceModelCopyWithImpl<$Res, BotInstanceModel>;
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    String webhookUrl,
    String httpMethod,
    Map<String, String> customHeaders,
    int requestTimeoutMs,
    RetryPolicy retryPolicy,
    String payloadTemplateId,
    String responseTemplateId,
    double voicePlaybackSpeed,
    int sessionTTL,
    int? autoResetOnInactivityMs,
    String? defaultGreeting,
    DateTime createdAt,
    DateTime updatedAt,
  });

  $RetryPolicyCopyWith<$Res> get retryPolicy;
}

/// @nodoc
class _$BotInstanceModelCopyWithImpl<$Res, $Val extends BotInstanceModel>
    implements $BotInstanceModelCopyWith<$Res> {
  _$BotInstanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BotInstanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? webhookUrl = null,
    Object? httpMethod = null,
    Object? customHeaders = null,
    Object? requestTimeoutMs = null,
    Object? retryPolicy = null,
    Object? payloadTemplateId = null,
    Object? responseTemplateId = null,
    Object? voicePlaybackSpeed = null,
    Object? sessionTTL = null,
    Object? autoResetOnInactivityMs = freezed,
    Object? defaultGreeting = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            webhookUrl: null == webhookUrl
                ? _value.webhookUrl
                : webhookUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            httpMethod: null == httpMethod
                ? _value.httpMethod
                : httpMethod // ignore: cast_nullable_to_non_nullable
                      as String,
            customHeaders: null == customHeaders
                ? _value.customHeaders
                : customHeaders // ignore: cast_nullable_to_non_nullable
                      as Map<String, String>,
            requestTimeoutMs: null == requestTimeoutMs
                ? _value.requestTimeoutMs
                : requestTimeoutMs // ignore: cast_nullable_to_non_nullable
                      as int,
            retryPolicy: null == retryPolicy
                ? _value.retryPolicy
                : retryPolicy // ignore: cast_nullable_to_non_nullable
                      as RetryPolicy,
            payloadTemplateId: null == payloadTemplateId
                ? _value.payloadTemplateId
                : payloadTemplateId // ignore: cast_nullable_to_non_nullable
                      as String,
            responseTemplateId: null == responseTemplateId
                ? _value.responseTemplateId
                : responseTemplateId // ignore: cast_nullable_to_non_nullable
                      as String,
            voicePlaybackSpeed: null == voicePlaybackSpeed
                ? _value.voicePlaybackSpeed
                : voicePlaybackSpeed // ignore: cast_nullable_to_non_nullable
                      as double,
            sessionTTL: null == sessionTTL
                ? _value.sessionTTL
                : sessionTTL // ignore: cast_nullable_to_non_nullable
                      as int,
            autoResetOnInactivityMs: freezed == autoResetOnInactivityMs
                ? _value.autoResetOnInactivityMs
                : autoResetOnInactivityMs // ignore: cast_nullable_to_non_nullable
                      as int?,
            defaultGreeting: freezed == defaultGreeting
                ? _value.defaultGreeting
                : defaultGreeting // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }

  /// Create a copy of BotInstanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RetryPolicyCopyWith<$Res> get retryPolicy {
    return $RetryPolicyCopyWith<$Res>(_value.retryPolicy, (value) {
      return _then(_value.copyWith(retryPolicy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BotInstanceModelImplCopyWith<$Res>
    implements $BotInstanceModelCopyWith<$Res> {
  factory _$$BotInstanceModelImplCopyWith(
    _$BotInstanceModelImpl value,
    $Res Function(_$BotInstanceModelImpl) then,
  ) = __$$BotInstanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    String webhookUrl,
    String httpMethod,
    Map<String, String> customHeaders,
    int requestTimeoutMs,
    RetryPolicy retryPolicy,
    String payloadTemplateId,
    String responseTemplateId,
    double voicePlaybackSpeed,
    int sessionTTL,
    int? autoResetOnInactivityMs,
    String? defaultGreeting,
    DateTime createdAt,
    DateTime updatedAt,
  });

  @override
  $RetryPolicyCopyWith<$Res> get retryPolicy;
}

/// @nodoc
class __$$BotInstanceModelImplCopyWithImpl<$Res>
    extends _$BotInstanceModelCopyWithImpl<$Res, _$BotInstanceModelImpl>
    implements _$$BotInstanceModelImplCopyWith<$Res> {
  __$$BotInstanceModelImplCopyWithImpl(
    _$BotInstanceModelImpl _value,
    $Res Function(_$BotInstanceModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BotInstanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? webhookUrl = null,
    Object? httpMethod = null,
    Object? customHeaders = null,
    Object? requestTimeoutMs = null,
    Object? retryPolicy = null,
    Object? payloadTemplateId = null,
    Object? responseTemplateId = null,
    Object? voicePlaybackSpeed = null,
    Object? sessionTTL = null,
    Object? autoResetOnInactivityMs = freezed,
    Object? defaultGreeting = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$BotInstanceModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        webhookUrl: null == webhookUrl
            ? _value.webhookUrl
            : webhookUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        httpMethod: null == httpMethod
            ? _value.httpMethod
            : httpMethod // ignore: cast_nullable_to_non_nullable
                  as String,
        customHeaders: null == customHeaders
            ? _value._customHeaders
            : customHeaders // ignore: cast_nullable_to_non_nullable
                  as Map<String, String>,
        requestTimeoutMs: null == requestTimeoutMs
            ? _value.requestTimeoutMs
            : requestTimeoutMs // ignore: cast_nullable_to_non_nullable
                  as int,
        retryPolicy: null == retryPolicy
            ? _value.retryPolicy
            : retryPolicy // ignore: cast_nullable_to_non_nullable
                  as RetryPolicy,
        payloadTemplateId: null == payloadTemplateId
            ? _value.payloadTemplateId
            : payloadTemplateId // ignore: cast_nullable_to_non_nullable
                  as String,
        responseTemplateId: null == responseTemplateId
            ? _value.responseTemplateId
            : responseTemplateId // ignore: cast_nullable_to_non_nullable
                  as String,
        voicePlaybackSpeed: null == voicePlaybackSpeed
            ? _value.voicePlaybackSpeed
            : voicePlaybackSpeed // ignore: cast_nullable_to_non_nullable
                  as double,
        sessionTTL: null == sessionTTL
            ? _value.sessionTTL
            : sessionTTL // ignore: cast_nullable_to_non_nullable
                  as int,
        autoResetOnInactivityMs: freezed == autoResetOnInactivityMs
            ? _value.autoResetOnInactivityMs
            : autoResetOnInactivityMs // ignore: cast_nullable_to_non_nullable
                  as int?,
        defaultGreeting: freezed == defaultGreeting
            ? _value.defaultGreeting
            : defaultGreeting // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BotInstanceModelImpl implements _BotInstanceModel {
  const _$BotInstanceModelImpl({
    required this.id,
    required this.name,
    required this.description,
    required this.webhookUrl,
    this.httpMethod = 'POST',
    final Map<String, String> customHeaders = const {},
    this.requestTimeoutMs = 30000,
    required this.retryPolicy,
    required this.payloadTemplateId,
    required this.responseTemplateId,
    this.voicePlaybackSpeed = 1.0,
    this.sessionTTL = 3600000,
    this.autoResetOnInactivityMs,
    this.defaultGreeting,
    required this.createdAt,
    required this.updatedAt,
  }) : _customHeaders = customHeaders;

  factory _$BotInstanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotInstanceModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String webhookUrl;
  @override
  @JsonKey()
  final String httpMethod;
  final Map<String, String> _customHeaders;
  @override
  @JsonKey()
  Map<String, String> get customHeaders {
    if (_customHeaders is EqualUnmodifiableMapView) return _customHeaders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_customHeaders);
  }

  @override
  @JsonKey()
  final int requestTimeoutMs;
  @override
  final RetryPolicy retryPolicy;
  @override
  final String payloadTemplateId;
  @override
  final String responseTemplateId;
  @override
  @JsonKey()
  final double voicePlaybackSpeed;
  @override
  @JsonKey()
  final int sessionTTL;
  // 1 hour default
  @override
  final int? autoResetOnInactivityMs;
  @override
  final String? defaultGreeting;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'BotInstanceModel(id: $id, name: $name, description: $description, webhookUrl: $webhookUrl, httpMethod: $httpMethod, customHeaders: $customHeaders, requestTimeoutMs: $requestTimeoutMs, retryPolicy: $retryPolicy, payloadTemplateId: $payloadTemplateId, responseTemplateId: $responseTemplateId, voicePlaybackSpeed: $voicePlaybackSpeed, sessionTTL: $sessionTTL, autoResetOnInactivityMs: $autoResetOnInactivityMs, defaultGreeting: $defaultGreeting, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BotInstanceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.webhookUrl, webhookUrl) ||
                other.webhookUrl == webhookUrl) &&
            (identical(other.httpMethod, httpMethod) ||
                other.httpMethod == httpMethod) &&
            const DeepCollectionEquality().equals(
              other._customHeaders,
              _customHeaders,
            ) &&
            (identical(other.requestTimeoutMs, requestTimeoutMs) ||
                other.requestTimeoutMs == requestTimeoutMs) &&
            (identical(other.retryPolicy, retryPolicy) ||
                other.retryPolicy == retryPolicy) &&
            (identical(other.payloadTemplateId, payloadTemplateId) ||
                other.payloadTemplateId == payloadTemplateId) &&
            (identical(other.responseTemplateId, responseTemplateId) ||
                other.responseTemplateId == responseTemplateId) &&
            (identical(other.voicePlaybackSpeed, voicePlaybackSpeed) ||
                other.voicePlaybackSpeed == voicePlaybackSpeed) &&
            (identical(other.sessionTTL, sessionTTL) ||
                other.sessionTTL == sessionTTL) &&
            (identical(
                  other.autoResetOnInactivityMs,
                  autoResetOnInactivityMs,
                ) ||
                other.autoResetOnInactivityMs == autoResetOnInactivityMs) &&
            (identical(other.defaultGreeting, defaultGreeting) ||
                other.defaultGreeting == defaultGreeting) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    webhookUrl,
    httpMethod,
    const DeepCollectionEquality().hash(_customHeaders),
    requestTimeoutMs,
    retryPolicy,
    payloadTemplateId,
    responseTemplateId,
    voicePlaybackSpeed,
    sessionTTL,
    autoResetOnInactivityMs,
    defaultGreeting,
    createdAt,
    updatedAt,
  );

  /// Create a copy of BotInstanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotInstanceModelImplCopyWith<_$BotInstanceModelImpl> get copyWith =>
      __$$BotInstanceModelImplCopyWithImpl<_$BotInstanceModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BotInstanceModelImplToJson(this);
  }
}

abstract class _BotInstanceModel implements BotInstanceModel {
  const factory _BotInstanceModel({
    required final String id,
    required final String name,
    required final String description,
    required final String webhookUrl,
    final String httpMethod,
    final Map<String, String> customHeaders,
    final int requestTimeoutMs,
    required final RetryPolicy retryPolicy,
    required final String payloadTemplateId,
    required final String responseTemplateId,
    final double voicePlaybackSpeed,
    final int sessionTTL,
    final int? autoResetOnInactivityMs,
    final String? defaultGreeting,
    required final DateTime createdAt,
    required final DateTime updatedAt,
  }) = _$BotInstanceModelImpl;

  factory _BotInstanceModel.fromJson(Map<String, dynamic> json) =
      _$BotInstanceModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get webhookUrl;
  @override
  String get httpMethod;
  @override
  Map<String, String> get customHeaders;
  @override
  int get requestTimeoutMs;
  @override
  RetryPolicy get retryPolicy;
  @override
  String get payloadTemplateId;
  @override
  String get responseTemplateId;
  @override
  double get voicePlaybackSpeed;
  @override
  int get sessionTTL; // 1 hour default
  @override
  int? get autoResetOnInactivityMs;
  @override
  String? get defaultGreeting;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of BotInstanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotInstanceModelImplCopyWith<_$BotInstanceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RetryPolicy _$RetryPolicyFromJson(Map<String, dynamic> json) {
  return _RetryPolicy.fromJson(json);
}

/// @nodoc
mixin _$RetryPolicy {
  bool get enabled => throw _privateConstructorUsedError;
  int get maxAttempts => throw _privateConstructorUsedError;
  List<int> get backoffDelaysMs => throw _privateConstructorUsedError;

  /// Serializes this RetryPolicy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RetryPolicy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RetryPolicyCopyWith<RetryPolicy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetryPolicyCopyWith<$Res> {
  factory $RetryPolicyCopyWith(
    RetryPolicy value,
    $Res Function(RetryPolicy) then,
  ) = _$RetryPolicyCopyWithImpl<$Res, RetryPolicy>;
  @useResult
  $Res call({bool enabled, int maxAttempts, List<int> backoffDelaysMs});
}

/// @nodoc
class _$RetryPolicyCopyWithImpl<$Res, $Val extends RetryPolicy>
    implements $RetryPolicyCopyWith<$Res> {
  _$RetryPolicyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RetryPolicy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? maxAttempts = null,
    Object? backoffDelaysMs = null,
  }) {
    return _then(
      _value.copyWith(
            enabled: null == enabled
                ? _value.enabled
                : enabled // ignore: cast_nullable_to_non_nullable
                      as bool,
            maxAttempts: null == maxAttempts
                ? _value.maxAttempts
                : maxAttempts // ignore: cast_nullable_to_non_nullable
                      as int,
            backoffDelaysMs: null == backoffDelaysMs
                ? _value.backoffDelaysMs
                : backoffDelaysMs // ignore: cast_nullable_to_non_nullable
                      as List<int>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RetryPolicyImplCopyWith<$Res>
    implements $RetryPolicyCopyWith<$Res> {
  factory _$$RetryPolicyImplCopyWith(
    _$RetryPolicyImpl value,
    $Res Function(_$RetryPolicyImpl) then,
  ) = __$$RetryPolicyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool enabled, int maxAttempts, List<int> backoffDelaysMs});
}

/// @nodoc
class __$$RetryPolicyImplCopyWithImpl<$Res>
    extends _$RetryPolicyCopyWithImpl<$Res, _$RetryPolicyImpl>
    implements _$$RetryPolicyImplCopyWith<$Res> {
  __$$RetryPolicyImplCopyWithImpl(
    _$RetryPolicyImpl _value,
    $Res Function(_$RetryPolicyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RetryPolicy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? maxAttempts = null,
    Object? backoffDelaysMs = null,
  }) {
    return _then(
      _$RetryPolicyImpl(
        enabled: null == enabled
            ? _value.enabled
            : enabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        maxAttempts: null == maxAttempts
            ? _value.maxAttempts
            : maxAttempts // ignore: cast_nullable_to_non_nullable
                  as int,
        backoffDelaysMs: null == backoffDelaysMs
            ? _value._backoffDelaysMs
            : backoffDelaysMs // ignore: cast_nullable_to_non_nullable
                  as List<int>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RetryPolicyImpl implements _RetryPolicy {
  const _$RetryPolicyImpl({
    this.enabled = true,
    this.maxAttempts = 5,
    final List<int> backoffDelaysMs = const [250, 1000, 3000, 10000],
  }) : _backoffDelaysMs = backoffDelaysMs;

  factory _$RetryPolicyImpl.fromJson(Map<String, dynamic> json) =>
      _$$RetryPolicyImplFromJson(json);

  @override
  @JsonKey()
  final bool enabled;
  @override
  @JsonKey()
  final int maxAttempts;
  final List<int> _backoffDelaysMs;
  @override
  @JsonKey()
  List<int> get backoffDelaysMs {
    if (_backoffDelaysMs is EqualUnmodifiableListView) return _backoffDelaysMs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_backoffDelaysMs);
  }

  @override
  String toString() {
    return 'RetryPolicy(enabled: $enabled, maxAttempts: $maxAttempts, backoffDelaysMs: $backoffDelaysMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetryPolicyImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.maxAttempts, maxAttempts) ||
                other.maxAttempts == maxAttempts) &&
            const DeepCollectionEquality().equals(
              other._backoffDelaysMs,
              _backoffDelaysMs,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    enabled,
    maxAttempts,
    const DeepCollectionEquality().hash(_backoffDelaysMs),
  );

  /// Create a copy of RetryPolicy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RetryPolicyImplCopyWith<_$RetryPolicyImpl> get copyWith =>
      __$$RetryPolicyImplCopyWithImpl<_$RetryPolicyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RetryPolicyImplToJson(this);
  }
}

abstract class _RetryPolicy implements RetryPolicy {
  const factory _RetryPolicy({
    final bool enabled,
    final int maxAttempts,
    final List<int> backoffDelaysMs,
  }) = _$RetryPolicyImpl;

  factory _RetryPolicy.fromJson(Map<String, dynamic> json) =
      _$RetryPolicyImpl.fromJson;

  @override
  bool get enabled;
  @override
  int get maxAttempts;
  @override
  List<int> get backoffDelaysMs;

  /// Create a copy of RetryPolicy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RetryPolicyImplCopyWith<_$RetryPolicyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
