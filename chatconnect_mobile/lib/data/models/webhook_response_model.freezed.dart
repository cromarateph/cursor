// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webhook_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WebhookResponseModel _$WebhookResponseModelFromJson(Map<String, dynamic> json) {
  return _WebhookResponseModel.fromJson(json);
}

/// @nodoc
mixin _$WebhookResponseModel {
  bool get ok => throw _privateConstructorUsedError;
  SessionResponse get session => throw _privateConstructorUsedError;
  ReplyResponse get reply => throw _privateConstructorUsedError;
  DisplayResponse get display => throw _privateConstructorUsedError;
  List<String> get errors => throw _privateConstructorUsedError;

  /// Serializes this WebhookResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebhookResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebhookResponseModelCopyWith<WebhookResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebhookResponseModelCopyWith<$Res> {
  factory $WebhookResponseModelCopyWith(
    WebhookResponseModel value,
    $Res Function(WebhookResponseModel) then,
  ) = _$WebhookResponseModelCopyWithImpl<$Res, WebhookResponseModel>;
  @useResult
  $Res call({
    bool ok,
    SessionResponse session,
    ReplyResponse reply,
    DisplayResponse display,
    List<String> errors,
  });

  $SessionResponseCopyWith<$Res> get session;
  $ReplyResponseCopyWith<$Res> get reply;
  $DisplayResponseCopyWith<$Res> get display;
}

/// @nodoc
class _$WebhookResponseModelCopyWithImpl<
  $Res,
  $Val extends WebhookResponseModel
>
    implements $WebhookResponseModelCopyWith<$Res> {
  _$WebhookResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebhookResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ok = null,
    Object? session = null,
    Object? reply = null,
    Object? display = null,
    Object? errors = null,
  }) {
    return _then(
      _value.copyWith(
            ok: null == ok
                ? _value.ok
                : ok // ignore: cast_nullable_to_non_nullable
                      as bool,
            session: null == session
                ? _value.session
                : session // ignore: cast_nullable_to_non_nullable
                      as SessionResponse,
            reply: null == reply
                ? _value.reply
                : reply // ignore: cast_nullable_to_non_nullable
                      as ReplyResponse,
            display: null == display
                ? _value.display
                : display // ignore: cast_nullable_to_non_nullable
                      as DisplayResponse,
            errors: null == errors
                ? _value.errors
                : errors // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }

  /// Create a copy of WebhookResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionResponseCopyWith<$Res> get session {
    return $SessionResponseCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }

  /// Create a copy of WebhookResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReplyResponseCopyWith<$Res> get reply {
    return $ReplyResponseCopyWith<$Res>(_value.reply, (value) {
      return _then(_value.copyWith(reply: value) as $Val);
    });
  }

  /// Create a copy of WebhookResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisplayResponseCopyWith<$Res> get display {
    return $DisplayResponseCopyWith<$Res>(_value.display, (value) {
      return _then(_value.copyWith(display: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebhookResponseModelImplCopyWith<$Res>
    implements $WebhookResponseModelCopyWith<$Res> {
  factory _$$WebhookResponseModelImplCopyWith(
    _$WebhookResponseModelImpl value,
    $Res Function(_$WebhookResponseModelImpl) then,
  ) = __$$WebhookResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool ok,
    SessionResponse session,
    ReplyResponse reply,
    DisplayResponse display,
    List<String> errors,
  });

  @override
  $SessionResponseCopyWith<$Res> get session;
  @override
  $ReplyResponseCopyWith<$Res> get reply;
  @override
  $DisplayResponseCopyWith<$Res> get display;
}

/// @nodoc
class __$$WebhookResponseModelImplCopyWithImpl<$Res>
    extends _$WebhookResponseModelCopyWithImpl<$Res, _$WebhookResponseModelImpl>
    implements _$$WebhookResponseModelImplCopyWith<$Res> {
  __$$WebhookResponseModelImplCopyWithImpl(
    _$WebhookResponseModelImpl _value,
    $Res Function(_$WebhookResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WebhookResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ok = null,
    Object? session = null,
    Object? reply = null,
    Object? display = null,
    Object? errors = null,
  }) {
    return _then(
      _$WebhookResponseModelImpl(
        ok: null == ok
            ? _value.ok
            : ok // ignore: cast_nullable_to_non_nullable
                  as bool,
        session: null == session
            ? _value.session
            : session // ignore: cast_nullable_to_non_nullable
                  as SessionResponse,
        reply: null == reply
            ? _value.reply
            : reply // ignore: cast_nullable_to_non_nullable
                  as ReplyResponse,
        display: null == display
            ? _value.display
            : display // ignore: cast_nullable_to_non_nullable
                  as DisplayResponse,
        errors: null == errors
            ? _value._errors
            : errors // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WebhookResponseModelImpl implements _WebhookResponseModel {
  const _$WebhookResponseModelImpl({
    required this.ok,
    required this.session,
    required this.reply,
    required this.display,
    final List<String> errors = const [],
  }) : _errors = errors;

  factory _$WebhookResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebhookResponseModelImplFromJson(json);

  @override
  final bool ok;
  @override
  final SessionResponse session;
  @override
  final ReplyResponse reply;
  @override
  final DisplayResponse display;
  final List<String> _errors;
  @override
  @JsonKey()
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'WebhookResponseModel(ok: $ok, session: $session, reply: $reply, display: $display, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebhookResponseModelImpl &&
            (identical(other.ok, ok) || other.ok == ok) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.reply, reply) || other.reply == reply) &&
            (identical(other.display, display) || other.display == display) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    ok,
    session,
    reply,
    display,
    const DeepCollectionEquality().hash(_errors),
  );

  /// Create a copy of WebhookResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebhookResponseModelImplCopyWith<_$WebhookResponseModelImpl>
  get copyWith =>
      __$$WebhookResponseModelImplCopyWithImpl<_$WebhookResponseModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WebhookResponseModelImplToJson(this);
  }
}

abstract class _WebhookResponseModel implements WebhookResponseModel {
  const factory _WebhookResponseModel({
    required final bool ok,
    required final SessionResponse session,
    required final ReplyResponse reply,
    required final DisplayResponse display,
    final List<String> errors,
  }) = _$WebhookResponseModelImpl;

  factory _WebhookResponseModel.fromJson(Map<String, dynamic> json) =
      _$WebhookResponseModelImpl.fromJson;

  @override
  bool get ok;
  @override
  SessionResponse get session;
  @override
  ReplyResponse get reply;
  @override
  DisplayResponse get display;
  @override
  List<String> get errors;

  /// Create a copy of WebhookResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebhookResponseModelImplCopyWith<_$WebhookResponseModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

SessionResponse _$SessionResponseFromJson(Map<String, dynamic> json) {
  return _SessionResponse.fromJson(json);
}

/// @nodoc
mixin _$SessionResponse {
  String get id => throw _privateConstructorUsedError;
  bool get reset => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_of_conversation')
  bool get endOfConversation => throw _privateConstructorUsedError;

  /// Serializes this SessionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionResponseCopyWith<SessionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionResponseCopyWith<$Res> {
  factory $SessionResponseCopyWith(
    SessionResponse value,
    $Res Function(SessionResponse) then,
  ) = _$SessionResponseCopyWithImpl<$Res, SessionResponse>;
  @useResult
  $Res call({
    String id,
    bool reset,
    @JsonKey(name: 'end_of_conversation') bool endOfConversation,
  });
}

/// @nodoc
class _$SessionResponseCopyWithImpl<$Res, $Val extends SessionResponse>
    implements $SessionResponseCopyWith<$Res> {
  _$SessionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reset = null,
    Object? endOfConversation = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            reset: null == reset
                ? _value.reset
                : reset // ignore: cast_nullable_to_non_nullable
                      as bool,
            endOfConversation: null == endOfConversation
                ? _value.endOfConversation
                : endOfConversation // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SessionResponseImplCopyWith<$Res>
    implements $SessionResponseCopyWith<$Res> {
  factory _$$SessionResponseImplCopyWith(
    _$SessionResponseImpl value,
    $Res Function(_$SessionResponseImpl) then,
  ) = __$$SessionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    bool reset,
    @JsonKey(name: 'end_of_conversation') bool endOfConversation,
  });
}

/// @nodoc
class __$$SessionResponseImplCopyWithImpl<$Res>
    extends _$SessionResponseCopyWithImpl<$Res, _$SessionResponseImpl>
    implements _$$SessionResponseImplCopyWith<$Res> {
  __$$SessionResponseImplCopyWithImpl(
    _$SessionResponseImpl _value,
    $Res Function(_$SessionResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reset = null,
    Object? endOfConversation = null,
  }) {
    return _then(
      _$SessionResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        reset: null == reset
            ? _value.reset
            : reset // ignore: cast_nullable_to_non_nullable
                  as bool,
        endOfConversation: null == endOfConversation
            ? _value.endOfConversation
            : endOfConversation // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionResponseImpl implements _SessionResponse {
  const _$SessionResponseImpl({
    required this.id,
    this.reset = false,
    @JsonKey(name: 'end_of_conversation') this.endOfConversation = false,
  });

  factory _$SessionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionResponseImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final bool reset;
  @override
  @JsonKey(name: 'end_of_conversation')
  final bool endOfConversation;

  @override
  String toString() {
    return 'SessionResponse(id: $id, reset: $reset, endOfConversation: $endOfConversation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reset, reset) || other.reset == reset) &&
            (identical(other.endOfConversation, endOfConversation) ||
                other.endOfConversation == endOfConversation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, reset, endOfConversation);

  /// Create a copy of SessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionResponseImplCopyWith<_$SessionResponseImpl> get copyWith =>
      __$$SessionResponseImplCopyWithImpl<_$SessionResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionResponseImplToJson(this);
  }
}

abstract class _SessionResponse implements SessionResponse {
  const factory _SessionResponse({
    required final String id,
    final bool reset,
    @JsonKey(name: 'end_of_conversation') final bool endOfConversation,
  }) = _$SessionResponseImpl;

  factory _SessionResponse.fromJson(Map<String, dynamic> json) =
      _$SessionResponseImpl.fromJson;

  @override
  String get id;
  @override
  bool get reset;
  @override
  @JsonKey(name: 'end_of_conversation')
  bool get endOfConversation;

  /// Create a copy of SessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionResponseImplCopyWith<_$SessionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReplyResponse _$ReplyResponseFromJson(Map<String, dynamic> json) {
  return _ReplyResponse.fromJson(json);
}

/// @nodoc
mixin _$ReplyResponse {
  String get type => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'audio_base64')
  String? get audioBase64 => throw _privateConstructorUsedError;
  @JsonKey(name: 'mime_type')
  String? get mimeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'suggested_followups')
  List<String> get suggestedFollowups => throw _privateConstructorUsedError;

  /// Serializes this ReplyResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReplyResponseCopyWith<ReplyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyResponseCopyWith<$Res> {
  factory $ReplyResponseCopyWith(
    ReplyResponse value,
    $Res Function(ReplyResponse) then,
  ) = _$ReplyResponseCopyWithImpl<$Res, ReplyResponse>;
  @useResult
  $Res call({
    String type,
    String? text,
    @JsonKey(name: 'audio_base64') String? audioBase64,
    @JsonKey(name: 'mime_type') String? mimeType,
    @JsonKey(name: 'suggested_followups') List<String> suggestedFollowups,
  });
}

/// @nodoc
class _$ReplyResponseCopyWithImpl<$Res, $Val extends ReplyResponse>
    implements $ReplyResponseCopyWith<$Res> {
  _$ReplyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = freezed,
    Object? audioBase64 = freezed,
    Object? mimeType = freezed,
    Object? suggestedFollowups = null,
  }) {
    return _then(
      _value.copyWith(
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            text: freezed == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String?,
            audioBase64: freezed == audioBase64
                ? _value.audioBase64
                : audioBase64 // ignore: cast_nullable_to_non_nullable
                      as String?,
            mimeType: freezed == mimeType
                ? _value.mimeType
                : mimeType // ignore: cast_nullable_to_non_nullable
                      as String?,
            suggestedFollowups: null == suggestedFollowups
                ? _value.suggestedFollowups
                : suggestedFollowups // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReplyResponseImplCopyWith<$Res>
    implements $ReplyResponseCopyWith<$Res> {
  factory _$$ReplyResponseImplCopyWith(
    _$ReplyResponseImpl value,
    $Res Function(_$ReplyResponseImpl) then,
  ) = __$$ReplyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String type,
    String? text,
    @JsonKey(name: 'audio_base64') String? audioBase64,
    @JsonKey(name: 'mime_type') String? mimeType,
    @JsonKey(name: 'suggested_followups') List<String> suggestedFollowups,
  });
}

/// @nodoc
class __$$ReplyResponseImplCopyWithImpl<$Res>
    extends _$ReplyResponseCopyWithImpl<$Res, _$ReplyResponseImpl>
    implements _$$ReplyResponseImplCopyWith<$Res> {
  __$$ReplyResponseImplCopyWithImpl(
    _$ReplyResponseImpl _value,
    $Res Function(_$ReplyResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = freezed,
    Object? audioBase64 = freezed,
    Object? mimeType = freezed,
    Object? suggestedFollowups = null,
  }) {
    return _then(
      _$ReplyResponseImpl(
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        text: freezed == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String?,
        audioBase64: freezed == audioBase64
            ? _value.audioBase64
            : audioBase64 // ignore: cast_nullable_to_non_nullable
                  as String?,
        mimeType: freezed == mimeType
            ? _value.mimeType
            : mimeType // ignore: cast_nullable_to_non_nullable
                  as String?,
        suggestedFollowups: null == suggestedFollowups
            ? _value._suggestedFollowups
            : suggestedFollowups // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyResponseImpl implements _ReplyResponse {
  const _$ReplyResponseImpl({
    required this.type,
    this.text,
    @JsonKey(name: 'audio_base64') this.audioBase64,
    @JsonKey(name: 'mime_type') this.mimeType,
    @JsonKey(name: 'suggested_followups')
    final List<String> suggestedFollowups = const [],
  }) : _suggestedFollowups = suggestedFollowups;

  factory _$ReplyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyResponseImplFromJson(json);

  @override
  final String type;
  @override
  final String? text;
  @override
  @JsonKey(name: 'audio_base64')
  final String? audioBase64;
  @override
  @JsonKey(name: 'mime_type')
  final String? mimeType;
  final List<String> _suggestedFollowups;
  @override
  @JsonKey(name: 'suggested_followups')
  List<String> get suggestedFollowups {
    if (_suggestedFollowups is EqualUnmodifiableListView)
      return _suggestedFollowups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestedFollowups);
  }

  @override
  String toString() {
    return 'ReplyResponse(type: $type, text: $text, audioBase64: $audioBase64, mimeType: $mimeType, suggestedFollowups: $suggestedFollowups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyResponseImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.audioBase64, audioBase64) ||
                other.audioBase64 == audioBase64) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            const DeepCollectionEquality().equals(
              other._suggestedFollowups,
              _suggestedFollowups,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    type,
    text,
    audioBase64,
    mimeType,
    const DeepCollectionEquality().hash(_suggestedFollowups),
  );

  /// Create a copy of ReplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyResponseImplCopyWith<_$ReplyResponseImpl> get copyWith =>
      __$$ReplyResponseImplCopyWithImpl<_$ReplyResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyResponseImplToJson(this);
  }
}

abstract class _ReplyResponse implements ReplyResponse {
  const factory _ReplyResponse({
    required final String type,
    final String? text,
    @JsonKey(name: 'audio_base64') final String? audioBase64,
    @JsonKey(name: 'mime_type') final String? mimeType,
    @JsonKey(name: 'suggested_followups') final List<String> suggestedFollowups,
  }) = _$ReplyResponseImpl;

  factory _ReplyResponse.fromJson(Map<String, dynamic> json) =
      _$ReplyResponseImpl.fromJson;

  @override
  String get type;
  @override
  String? get text;
  @override
  @JsonKey(name: 'audio_base64')
  String? get audioBase64;
  @override
  @JsonKey(name: 'mime_type')
  String? get mimeType;
  @override
  @JsonKey(name: 'suggested_followups')
  List<String> get suggestedFollowups;

  /// Create a copy of ReplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplyResponseImplCopyWith<_$ReplyResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DisplayResponse _$DisplayResponseFromJson(Map<String, dynamic> json) {
  return _DisplayResponse.fromJson(json);
}

/// @nodoc
mixin _$DisplayResponse {
  List<DisplayMessage> get messages => throw _privateConstructorUsedError;

  /// Serializes this DisplayResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DisplayResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisplayResponseCopyWith<DisplayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayResponseCopyWith<$Res> {
  factory $DisplayResponseCopyWith(
    DisplayResponse value,
    $Res Function(DisplayResponse) then,
  ) = _$DisplayResponseCopyWithImpl<$Res, DisplayResponse>;
  @useResult
  $Res call({List<DisplayMessage> messages});
}

/// @nodoc
class _$DisplayResponseCopyWithImpl<$Res, $Val extends DisplayResponse>
    implements $DisplayResponseCopyWith<$Res> {
  _$DisplayResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisplayResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _value.copyWith(
            messages: null == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<DisplayMessage>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DisplayResponseImplCopyWith<$Res>
    implements $DisplayResponseCopyWith<$Res> {
  factory _$$DisplayResponseImplCopyWith(
    _$DisplayResponseImpl value,
    $Res Function(_$DisplayResponseImpl) then,
  ) = __$$DisplayResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DisplayMessage> messages});
}

/// @nodoc
class __$$DisplayResponseImplCopyWithImpl<$Res>
    extends _$DisplayResponseCopyWithImpl<$Res, _$DisplayResponseImpl>
    implements _$$DisplayResponseImplCopyWith<$Res> {
  __$$DisplayResponseImplCopyWithImpl(
    _$DisplayResponseImpl _value,
    $Res Function(_$DisplayResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DisplayResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _$DisplayResponseImpl(
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<DisplayMessage>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DisplayResponseImpl implements _DisplayResponse {
  const _$DisplayResponseImpl({final List<DisplayMessage> messages = const []})
    : _messages = messages;

  factory _$DisplayResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisplayResponseImplFromJson(json);

  final List<DisplayMessage> _messages;
  @override
  @JsonKey()
  List<DisplayMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'DisplayResponse(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayResponseImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of DisplayResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayResponseImplCopyWith<_$DisplayResponseImpl> get copyWith =>
      __$$DisplayResponseImplCopyWithImpl<_$DisplayResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DisplayResponseImplToJson(this);
  }
}

abstract class _DisplayResponse implements DisplayResponse {
  const factory _DisplayResponse({final List<DisplayMessage> messages}) =
      _$DisplayResponseImpl;

  factory _DisplayResponse.fromJson(Map<String, dynamic> json) =
      _$DisplayResponseImpl.fromJson;

  @override
  List<DisplayMessage> get messages;

  /// Create a copy of DisplayResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisplayResponseImplCopyWith<_$DisplayResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DisplayMessage _$DisplayMessageFromJson(Map<String, dynamic> json) {
  return _DisplayMessage.fromJson(json);
}

/// @nodoc
mixin _$DisplayMessage {
  String get role => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Serializes this DisplayMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DisplayMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisplayMessageCopyWith<DisplayMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayMessageCopyWith<$Res> {
  factory $DisplayMessageCopyWith(
    DisplayMessage value,
    $Res Function(DisplayMessage) then,
  ) = _$DisplayMessageCopyWithImpl<$Res, DisplayMessage>;
  @useResult
  $Res call({String role, String text});
}

/// @nodoc
class _$DisplayMessageCopyWithImpl<$Res, $Val extends DisplayMessage>
    implements $DisplayMessageCopyWith<$Res> {
  _$DisplayMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisplayMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? role = null, Object? text = null}) {
    return _then(
      _value.copyWith(
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DisplayMessageImplCopyWith<$Res>
    implements $DisplayMessageCopyWith<$Res> {
  factory _$$DisplayMessageImplCopyWith(
    _$DisplayMessageImpl value,
    $Res Function(_$DisplayMessageImpl) then,
  ) = __$$DisplayMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String text});
}

/// @nodoc
class __$$DisplayMessageImplCopyWithImpl<$Res>
    extends _$DisplayMessageCopyWithImpl<$Res, _$DisplayMessageImpl>
    implements _$$DisplayMessageImplCopyWith<$Res> {
  __$$DisplayMessageImplCopyWithImpl(
    _$DisplayMessageImpl _value,
    $Res Function(_$DisplayMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DisplayMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? role = null, Object? text = null}) {
    return _then(
      _$DisplayMessageImpl(
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DisplayMessageImpl implements _DisplayMessage {
  const _$DisplayMessageImpl({required this.role, required this.text});

  factory _$DisplayMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisplayMessageImplFromJson(json);

  @override
  final String role;
  @override
  final String text;

  @override
  String toString() {
    return 'DisplayMessage(role: $role, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayMessageImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, text);

  /// Create a copy of DisplayMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayMessageImplCopyWith<_$DisplayMessageImpl> get copyWith =>
      __$$DisplayMessageImplCopyWithImpl<_$DisplayMessageImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DisplayMessageImplToJson(this);
  }
}

abstract class _DisplayMessage implements DisplayMessage {
  const factory _DisplayMessage({
    required final String role,
    required final String text,
  }) = _$DisplayMessageImpl;

  factory _DisplayMessage.fromJson(Map<String, dynamic> json) =
      _$DisplayMessageImpl.fromJson;

  @override
  String get role;
  @override
  String get text;

  /// Create a copy of DisplayMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisplayMessageImplCopyWith<_$DisplayMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
