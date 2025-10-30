// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webhook_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WebhookRequestModel _$WebhookRequestModelFromJson(Map<String, dynamic> json) {
  return _WebhookRequestModel.fromJson(json);
}

/// @nodoc
mixin _$WebhookRequestModel {
  AppInfo get app => throw _privateConstructorUsedError;
  UserInfo get user => throw _privateConstructorUsedError;
  BotInfo get bot => throw _privateConstructorUsedError;
  SessionInfo get session => throw _privateConstructorUsedError;
  MessageInfo get message => throw _privateConstructorUsedError;
  MetaInfo get meta => throw _privateConstructorUsedError;

  /// Serializes this WebhookRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebhookRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebhookRequestModelCopyWith<WebhookRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebhookRequestModelCopyWith<$Res> {
  factory $WebhookRequestModelCopyWith(
    WebhookRequestModel value,
    $Res Function(WebhookRequestModel) then,
  ) = _$WebhookRequestModelCopyWithImpl<$Res, WebhookRequestModel>;
  @useResult
  $Res call({
    AppInfo app,
    UserInfo user,
    BotInfo bot,
    SessionInfo session,
    MessageInfo message,
    MetaInfo meta,
  });

  $AppInfoCopyWith<$Res> get app;
  $UserInfoCopyWith<$Res> get user;
  $BotInfoCopyWith<$Res> get bot;
  $SessionInfoCopyWith<$Res> get session;
  $MessageInfoCopyWith<$Res> get message;
  $MetaInfoCopyWith<$Res> get meta;
}

/// @nodoc
class _$WebhookRequestModelCopyWithImpl<$Res, $Val extends WebhookRequestModel>
    implements $WebhookRequestModelCopyWith<$Res> {
  _$WebhookRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebhookRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? app = null,
    Object? user = null,
    Object? bot = null,
    Object? session = null,
    Object? message = null,
    Object? meta = null,
  }) {
    return _then(
      _value.copyWith(
            app: null == app
                ? _value.app
                : app // ignore: cast_nullable_to_non_nullable
                      as AppInfo,
            user: null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as UserInfo,
            bot: null == bot
                ? _value.bot
                : bot // ignore: cast_nullable_to_non_nullable
                      as BotInfo,
            session: null == session
                ? _value.session
                : session // ignore: cast_nullable_to_non_nullable
                      as SessionInfo,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as MessageInfo,
            meta: null == meta
                ? _value.meta
                : meta // ignore: cast_nullable_to_non_nullable
                      as MetaInfo,
          )
          as $Val,
    );
  }

  /// Create a copy of WebhookRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppInfoCopyWith<$Res> get app {
    return $AppInfoCopyWith<$Res>(_value.app, (value) {
      return _then(_value.copyWith(app: value) as $Val);
    });
  }

  /// Create a copy of WebhookRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserInfoCopyWith<$Res> get user {
    return $UserInfoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of WebhookRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BotInfoCopyWith<$Res> get bot {
    return $BotInfoCopyWith<$Res>(_value.bot, (value) {
      return _then(_value.copyWith(bot: value) as $Val);
    });
  }

  /// Create a copy of WebhookRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionInfoCopyWith<$Res> get session {
    return $SessionInfoCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }

  /// Create a copy of WebhookRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageInfoCopyWith<$Res> get message {
    return $MessageInfoCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }

  /// Create a copy of WebhookRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaInfoCopyWith<$Res> get meta {
    return $MetaInfoCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebhookRequestModelImplCopyWith<$Res>
    implements $WebhookRequestModelCopyWith<$Res> {
  factory _$$WebhookRequestModelImplCopyWith(
    _$WebhookRequestModelImpl value,
    $Res Function(_$WebhookRequestModelImpl) then,
  ) = __$$WebhookRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    AppInfo app,
    UserInfo user,
    BotInfo bot,
    SessionInfo session,
    MessageInfo message,
    MetaInfo meta,
  });

  @override
  $AppInfoCopyWith<$Res> get app;
  @override
  $UserInfoCopyWith<$Res> get user;
  @override
  $BotInfoCopyWith<$Res> get bot;
  @override
  $SessionInfoCopyWith<$Res> get session;
  @override
  $MessageInfoCopyWith<$Res> get message;
  @override
  $MetaInfoCopyWith<$Res> get meta;
}

/// @nodoc
class __$$WebhookRequestModelImplCopyWithImpl<$Res>
    extends _$WebhookRequestModelCopyWithImpl<$Res, _$WebhookRequestModelImpl>
    implements _$$WebhookRequestModelImplCopyWith<$Res> {
  __$$WebhookRequestModelImplCopyWithImpl(
    _$WebhookRequestModelImpl _value,
    $Res Function(_$WebhookRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WebhookRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? app = null,
    Object? user = null,
    Object? bot = null,
    Object? session = null,
    Object? message = null,
    Object? meta = null,
  }) {
    return _then(
      _$WebhookRequestModelImpl(
        app: null == app
            ? _value.app
            : app // ignore: cast_nullable_to_non_nullable
                  as AppInfo,
        user: null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as UserInfo,
        bot: null == bot
            ? _value.bot
            : bot // ignore: cast_nullable_to_non_nullable
                  as BotInfo,
        session: null == session
            ? _value.session
            : session // ignore: cast_nullable_to_non_nullable
                  as SessionInfo,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as MessageInfo,
        meta: null == meta
            ? _value.meta
            : meta // ignore: cast_nullable_to_non_nullable
                  as MetaInfo,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WebhookRequestModelImpl implements _WebhookRequestModel {
  const _$WebhookRequestModelImpl({
    required this.app,
    required this.user,
    required this.bot,
    required this.session,
    required this.message,
    required this.meta,
  });

  factory _$WebhookRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebhookRequestModelImplFromJson(json);

  @override
  final AppInfo app;
  @override
  final UserInfo user;
  @override
  final BotInfo bot;
  @override
  final SessionInfo session;
  @override
  final MessageInfo message;
  @override
  final MetaInfo meta;

  @override
  String toString() {
    return 'WebhookRequestModel(app: $app, user: $user, bot: $bot, session: $session, message: $message, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebhookRequestModelImpl &&
            (identical(other.app, app) || other.app == app) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.bot, bot) || other.bot == bot) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, app, user, bot, session, message, meta);

  /// Create a copy of WebhookRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebhookRequestModelImplCopyWith<_$WebhookRequestModelImpl> get copyWith =>
      __$$WebhookRequestModelImplCopyWithImpl<_$WebhookRequestModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WebhookRequestModelImplToJson(this);
  }
}

abstract class _WebhookRequestModel implements WebhookRequestModel {
  const factory _WebhookRequestModel({
    required final AppInfo app,
    required final UserInfo user,
    required final BotInfo bot,
    required final SessionInfo session,
    required final MessageInfo message,
    required final MetaInfo meta,
  }) = _$WebhookRequestModelImpl;

  factory _WebhookRequestModel.fromJson(Map<String, dynamic> json) =
      _$WebhookRequestModelImpl.fromJson;

  @override
  AppInfo get app;
  @override
  UserInfo get user;
  @override
  BotInfo get bot;
  @override
  SessionInfo get session;
  @override
  MessageInfo get message;
  @override
  MetaInfo get meta;

  /// Create a copy of WebhookRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebhookRequestModelImplCopyWith<_$WebhookRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppInfo _$AppInfoFromJson(Map<String, dynamic> json) {
  return _AppInfo.fromJson(json);
}

/// @nodoc
mixin _$AppInfo {
  String get id => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;

  /// Serializes this AppInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppInfoCopyWith<AppInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInfoCopyWith<$Res> {
  factory $AppInfoCopyWith(AppInfo value, $Res Function(AppInfo) then) =
      _$AppInfoCopyWithImpl<$Res, AppInfo>;
  @useResult
  $Res call({String id, String version, String platform});
}

/// @nodoc
class _$AppInfoCopyWithImpl<$Res, $Val extends AppInfo>
    implements $AppInfoCopyWith<$Res> {
  _$AppInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? version = null,
    Object? platform = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String,
            platform: null == platform
                ? _value.platform
                : platform // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppInfoImplCopyWith<$Res> implements $AppInfoCopyWith<$Res> {
  factory _$$AppInfoImplCopyWith(
    _$AppInfoImpl value,
    $Res Function(_$AppInfoImpl) then,
  ) = __$$AppInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String version, String platform});
}

/// @nodoc
class __$$AppInfoImplCopyWithImpl<$Res>
    extends _$AppInfoCopyWithImpl<$Res, _$AppInfoImpl>
    implements _$$AppInfoImplCopyWith<$Res> {
  __$$AppInfoImplCopyWithImpl(
    _$AppInfoImpl _value,
    $Res Function(_$AppInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? version = null,
    Object? platform = null,
  }) {
    return _then(
      _$AppInfoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String,
        platform: null == platform
            ? _value.platform
            : platform // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppInfoImpl implements _AppInfo {
  const _$AppInfoImpl({
    required this.id,
    required this.version,
    required this.platform,
  });

  factory _$AppInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppInfoImplFromJson(json);

  @override
  final String id;
  @override
  final String version;
  @override
  final String platform;

  @override
  String toString() {
    return 'AppInfo(id: $id, version: $version, platform: $platform)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.platform, platform) ||
                other.platform == platform));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, version, platform);

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppInfoImplCopyWith<_$AppInfoImpl> get copyWith =>
      __$$AppInfoImplCopyWithImpl<_$AppInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppInfoImplToJson(this);
  }
}

abstract class _AppInfo implements AppInfo {
  const factory _AppInfo({
    required final String id,
    required final String version,
    required final String platform,
  }) = _$AppInfoImpl;

  factory _AppInfo.fromJson(Map<String, dynamic> json) = _$AppInfoImpl.fromJson;

  @override
  String get id;
  @override
  String get version;
  @override
  String get platform;

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppInfoImplCopyWith<_$AppInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return _UserInfo.fromJson(json);
}

/// @nodoc
mixin _$UserInfo {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;

  /// Serializes this UserInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
  @useResult
  $Res call({String id, @JsonKey(name: 'display_name') String displayName});
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? displayName = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            displayName: null == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserInfoImplCopyWith<$Res>
    implements $UserInfoCopyWith<$Res> {
  factory _$$UserInfoImplCopyWith(
    _$UserInfoImpl value,
    $Res Function(_$UserInfoImpl) then,
  ) = __$$UserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, @JsonKey(name: 'display_name') String displayName});
}

/// @nodoc
class __$$UserInfoImplCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$UserInfoImpl>
    implements _$$UserInfoImplCopyWith<$Res> {
  __$$UserInfoImplCopyWithImpl(
    _$UserInfoImpl _value,
    $Res Function(_$UserInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? displayName = null}) {
    return _then(
      _$UserInfoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        displayName: null == displayName
            ? _value.displayName
            : displayName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoImpl implements _UserInfo {
  const _$UserInfoImpl({
    required this.id,
    @JsonKey(name: 'display_name') required this.displayName,
  });

  factory _$UserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'display_name')
  final String displayName;

  @override
  String toString() {
    return 'UserInfo(id: $id, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, displayName);

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      __$$UserInfoImplCopyWithImpl<_$UserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoImplToJson(this);
  }
}

abstract class _UserInfo implements UserInfo {
  const factory _UserInfo({
    required final String id,
    @JsonKey(name: 'display_name') required final String displayName,
  }) = _$UserInfoImpl;

  factory _UserInfo.fromJson(Map<String, dynamic> json) =
      _$UserInfoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'display_name')
  String get displayName;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BotInfo _$BotInfoFromJson(Map<String, dynamic> json) {
  return _BotInfo.fromJson(json);
}

/// @nodoc
mixin _$BotInfo {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this BotInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BotInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BotInfoCopyWith<BotInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotInfoCopyWith<$Res> {
  factory $BotInfoCopyWith(BotInfo value, $Res Function(BotInfo) then) =
      _$BotInfoCopyWithImpl<$Res, BotInfo>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$BotInfoCopyWithImpl<$Res, $Val extends BotInfo>
    implements $BotInfoCopyWith<$Res> {
  _$BotInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BotInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BotInfoImplCopyWith<$Res> implements $BotInfoCopyWith<$Res> {
  factory _$$BotInfoImplCopyWith(
    _$BotInfoImpl value,
    $Res Function(_$BotInfoImpl) then,
  ) = __$$BotInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$BotInfoImplCopyWithImpl<$Res>
    extends _$BotInfoCopyWithImpl<$Res, _$BotInfoImpl>
    implements _$$BotInfoImplCopyWith<$Res> {
  __$$BotInfoImplCopyWithImpl(
    _$BotInfoImpl _value,
    $Res Function(_$BotInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BotInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _$BotInfoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BotInfoImpl implements _BotInfo {
  const _$BotInfoImpl({required this.id, required this.name});

  factory _$BotInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotInfoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'BotInfo(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BotInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of BotInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotInfoImplCopyWith<_$BotInfoImpl> get copyWith =>
      __$$BotInfoImplCopyWithImpl<_$BotInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BotInfoImplToJson(this);
  }
}

abstract class _BotInfo implements BotInfo {
  const factory _BotInfo({
    required final String id,
    required final String name,
  }) = _$BotInfoImpl;

  factory _BotInfo.fromJson(Map<String, dynamic> json) = _$BotInfoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of BotInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotInfoImplCopyWith<_$BotInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionInfo _$SessionInfoFromJson(Map<String, dynamic> json) {
  return _SessionInfo.fromJson(json);
}

/// @nodoc
mixin _$SessionInfo {
  String get id => throw _privateConstructorUsedError;
  int get sequence => throw _privateConstructorUsedError;
  String? get context => throw _privateConstructorUsedError;
  @JsonKey(name: 'ttl_ms')
  int get ttlMs => throw _privateConstructorUsedError;

  /// Serializes this SessionInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionInfoCopyWith<SessionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionInfoCopyWith<$Res> {
  factory $SessionInfoCopyWith(
    SessionInfo value,
    $Res Function(SessionInfo) then,
  ) = _$SessionInfoCopyWithImpl<$Res, SessionInfo>;
  @useResult
  $Res call({
    String id,
    int sequence,
    String? context,
    @JsonKey(name: 'ttl_ms') int ttlMs,
  });
}

/// @nodoc
class _$SessionInfoCopyWithImpl<$Res, $Val extends SessionInfo>
    implements $SessionInfoCopyWith<$Res> {
  _$SessionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sequence = null,
    Object? context = freezed,
    Object? ttlMs = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            sequence: null == sequence
                ? _value.sequence
                : sequence // ignore: cast_nullable_to_non_nullable
                      as int,
            context: freezed == context
                ? _value.context
                : context // ignore: cast_nullable_to_non_nullable
                      as String?,
            ttlMs: null == ttlMs
                ? _value.ttlMs
                : ttlMs // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SessionInfoImplCopyWith<$Res>
    implements $SessionInfoCopyWith<$Res> {
  factory _$$SessionInfoImplCopyWith(
    _$SessionInfoImpl value,
    $Res Function(_$SessionInfoImpl) then,
  ) = __$$SessionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    int sequence,
    String? context,
    @JsonKey(name: 'ttl_ms') int ttlMs,
  });
}

/// @nodoc
class __$$SessionInfoImplCopyWithImpl<$Res>
    extends _$SessionInfoCopyWithImpl<$Res, _$SessionInfoImpl>
    implements _$$SessionInfoImplCopyWith<$Res> {
  __$$SessionInfoImplCopyWithImpl(
    _$SessionInfoImpl _value,
    $Res Function(_$SessionInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sequence = null,
    Object? context = freezed,
    Object? ttlMs = null,
  }) {
    return _then(
      _$SessionInfoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        sequence: null == sequence
            ? _value.sequence
            : sequence // ignore: cast_nullable_to_non_nullable
                  as int,
        context: freezed == context
            ? _value.context
            : context // ignore: cast_nullable_to_non_nullable
                  as String?,
        ttlMs: null == ttlMs
            ? _value.ttlMs
            : ttlMs // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionInfoImpl implements _SessionInfo {
  const _$SessionInfoImpl({
    required this.id,
    required this.sequence,
    this.context,
    @JsonKey(name: 'ttl_ms') required this.ttlMs,
  });

  factory _$SessionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionInfoImplFromJson(json);

  @override
  final String id;
  @override
  final int sequence;
  @override
  final String? context;
  @override
  @JsonKey(name: 'ttl_ms')
  final int ttlMs;

  @override
  String toString() {
    return 'SessionInfo(id: $id, sequence: $sequence, context: $context, ttlMs: $ttlMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.ttlMs, ttlMs) || other.ttlMs == ttlMs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, sequence, context, ttlMs);

  /// Create a copy of SessionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionInfoImplCopyWith<_$SessionInfoImpl> get copyWith =>
      __$$SessionInfoImplCopyWithImpl<_$SessionInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionInfoImplToJson(this);
  }
}

abstract class _SessionInfo implements SessionInfo {
  const factory _SessionInfo({
    required final String id,
    required final int sequence,
    final String? context,
    @JsonKey(name: 'ttl_ms') required final int ttlMs,
  }) = _$SessionInfoImpl;

  factory _SessionInfo.fromJson(Map<String, dynamic> json) =
      _$SessionInfoImpl.fromJson;

  @override
  String get id;
  @override
  int get sequence;
  @override
  String? get context;
  @override
  @JsonKey(name: 'ttl_ms')
  int get ttlMs;

  /// Create a copy of SessionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionInfoImplCopyWith<_$SessionInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageInfo _$MessageInfoFromJson(Map<String, dynamic> json) {
  return _MessageInfo.fromJson(json);
}

/// @nodoc
mixin _$MessageInfo {
  String get type => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'audio_format')
  String? get audioFormat => throw _privateConstructorUsedError;
  String? get lang => throw _privateConstructorUsedError;

  /// Serializes this MessageInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageInfoCopyWith<MessageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageInfoCopyWith<$Res> {
  factory $MessageInfoCopyWith(
    MessageInfo value,
    $Res Function(MessageInfo) then,
  ) = _$MessageInfoCopyWithImpl<$Res, MessageInfo>;
  @useResult
  $Res call({
    String type,
    String text,
    @JsonKey(name: 'audio_format') String? audioFormat,
    String? lang,
  });
}

/// @nodoc
class _$MessageInfoCopyWithImpl<$Res, $Val extends MessageInfo>
    implements $MessageInfoCopyWith<$Res> {
  _$MessageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? audioFormat = freezed,
    Object? lang = freezed,
  }) {
    return _then(
      _value.copyWith(
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
            audioFormat: freezed == audioFormat
                ? _value.audioFormat
                : audioFormat // ignore: cast_nullable_to_non_nullable
                      as String?,
            lang: freezed == lang
                ? _value.lang
                : lang // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MessageInfoImplCopyWith<$Res>
    implements $MessageInfoCopyWith<$Res> {
  factory _$$MessageInfoImplCopyWith(
    _$MessageInfoImpl value,
    $Res Function(_$MessageInfoImpl) then,
  ) = __$$MessageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String type,
    String text,
    @JsonKey(name: 'audio_format') String? audioFormat,
    String? lang,
  });
}

/// @nodoc
class __$$MessageInfoImplCopyWithImpl<$Res>
    extends _$MessageInfoCopyWithImpl<$Res, _$MessageInfoImpl>
    implements _$$MessageInfoImplCopyWith<$Res> {
  __$$MessageInfoImplCopyWithImpl(
    _$MessageInfoImpl _value,
    $Res Function(_$MessageInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MessageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? audioFormat = freezed,
    Object? lang = freezed,
  }) {
    return _then(
      _$MessageInfoImpl(
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        audioFormat: freezed == audioFormat
            ? _value.audioFormat
            : audioFormat // ignore: cast_nullable_to_non_nullable
                  as String?,
        lang: freezed == lang
            ? _value.lang
            : lang // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageInfoImpl implements _MessageInfo {
  const _$MessageInfoImpl({
    required this.type,
    required this.text,
    @JsonKey(name: 'audio_format') this.audioFormat,
    this.lang,
  });

  factory _$MessageInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageInfoImplFromJson(json);

  @override
  final String type;
  @override
  final String text;
  @override
  @JsonKey(name: 'audio_format')
  final String? audioFormat;
  @override
  final String? lang;

  @override
  String toString() {
    return 'MessageInfo(type: $type, text: $text, audioFormat: $audioFormat, lang: $lang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageInfoImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.audioFormat, audioFormat) ||
                other.audioFormat == audioFormat) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, text, audioFormat, lang);

  /// Create a copy of MessageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageInfoImplCopyWith<_$MessageInfoImpl> get copyWith =>
      __$$MessageInfoImplCopyWithImpl<_$MessageInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageInfoImplToJson(this);
  }
}

abstract class _MessageInfo implements MessageInfo {
  const factory _MessageInfo({
    required final String type,
    required final String text,
    @JsonKey(name: 'audio_format') final String? audioFormat,
    final String? lang,
  }) = _$MessageInfoImpl;

  factory _MessageInfo.fromJson(Map<String, dynamic> json) =
      _$MessageInfoImpl.fromJson;

  @override
  String get type;
  @override
  String get text;
  @override
  @JsonKey(name: 'audio_format')
  String? get audioFormat;
  @override
  String? get lang;

  /// Create a copy of MessageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageInfoImplCopyWith<_$MessageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaInfo _$MetaInfoFromJson(Map<String, dynamic> json) {
  return _MetaInfo.fromJson(json);
}

/// @nodoc
mixin _$MetaInfo {
  String get timestamp => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'trace_id')
  String get traceId => throw _privateConstructorUsedError;
  Map<String, dynamic> get extras => throw _privateConstructorUsedError;

  /// Serializes this MetaInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaInfoCopyWith<MetaInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaInfoCopyWith<$Res> {
  factory $MetaInfoCopyWith(MetaInfo value, $Res Function(MetaInfo) then) =
      _$MetaInfoCopyWithImpl<$Res, MetaInfo>;
  @useResult
  $Res call({
    String timestamp,
    String timezone,
    @JsonKey(name: 'trace_id') String traceId,
    Map<String, dynamic> extras,
  });
}

/// @nodoc
class _$MetaInfoCopyWithImpl<$Res, $Val extends MetaInfo>
    implements $MetaInfoCopyWith<$Res> {
  _$MetaInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetaInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? timezone = null,
    Object? traceId = null,
    Object? extras = null,
  }) {
    return _then(
      _value.copyWith(
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as String,
            timezone: null == timezone
                ? _value.timezone
                : timezone // ignore: cast_nullable_to_non_nullable
                      as String,
            traceId: null == traceId
                ? _value.traceId
                : traceId // ignore: cast_nullable_to_non_nullable
                      as String,
            extras: null == extras
                ? _value.extras
                : extras // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MetaInfoImplCopyWith<$Res>
    implements $MetaInfoCopyWith<$Res> {
  factory _$$MetaInfoImplCopyWith(
    _$MetaInfoImpl value,
    $Res Function(_$MetaInfoImpl) then,
  ) = __$$MetaInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String timestamp,
    String timezone,
    @JsonKey(name: 'trace_id') String traceId,
    Map<String, dynamic> extras,
  });
}

/// @nodoc
class __$$MetaInfoImplCopyWithImpl<$Res>
    extends _$MetaInfoCopyWithImpl<$Res, _$MetaInfoImpl>
    implements _$$MetaInfoImplCopyWith<$Res> {
  __$$MetaInfoImplCopyWithImpl(
    _$MetaInfoImpl _value,
    $Res Function(_$MetaInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MetaInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? timezone = null,
    Object? traceId = null,
    Object? extras = null,
  }) {
    return _then(
      _$MetaInfoImpl(
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as String,
        timezone: null == timezone
            ? _value.timezone
            : timezone // ignore: cast_nullable_to_non_nullable
                  as String,
        traceId: null == traceId
            ? _value.traceId
            : traceId // ignore: cast_nullable_to_non_nullable
                  as String,
        extras: null == extras
            ? _value._extras
            : extras // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaInfoImpl implements _MetaInfo {
  const _$MetaInfoImpl({
    required this.timestamp,
    required this.timezone,
    @JsonKey(name: 'trace_id') required this.traceId,
    final Map<String, dynamic> extras = const {},
  }) : _extras = extras;

  factory _$MetaInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaInfoImplFromJson(json);

  @override
  final String timestamp;
  @override
  final String timezone;
  @override
  @JsonKey(name: 'trace_id')
  final String traceId;
  final Map<String, dynamic> _extras;
  @override
  @JsonKey()
  Map<String, dynamic> get extras {
    if (_extras is EqualUnmodifiableMapView) return _extras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_extras);
  }

  @override
  String toString() {
    return 'MetaInfo(timestamp: $timestamp, timezone: $timezone, traceId: $traceId, extras: $extras)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaInfoImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.traceId, traceId) || other.traceId == traceId) &&
            const DeepCollectionEquality().equals(other._extras, _extras));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    timestamp,
    timezone,
    traceId,
    const DeepCollectionEquality().hash(_extras),
  );

  /// Create a copy of MetaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaInfoImplCopyWith<_$MetaInfoImpl> get copyWith =>
      __$$MetaInfoImplCopyWithImpl<_$MetaInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaInfoImplToJson(this);
  }
}

abstract class _MetaInfo implements MetaInfo {
  const factory _MetaInfo({
    required final String timestamp,
    required final String timezone,
    @JsonKey(name: 'trace_id') required final String traceId,
    final Map<String, dynamic> extras,
  }) = _$MetaInfoImpl;

  factory _MetaInfo.fromJson(Map<String, dynamic> json) =
      _$MetaInfoImpl.fromJson;

  @override
  String get timestamp;
  @override
  String get timezone;
  @override
  @JsonKey(name: 'trace_id')
  String get traceId;
  @override
  Map<String, dynamic> get extras;

  /// Create a copy of MetaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaInfoImplCopyWith<_$MetaInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
