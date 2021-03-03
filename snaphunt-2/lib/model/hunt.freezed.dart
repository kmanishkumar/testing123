// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'hunt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Hunt _$HuntFromJson(Map<String, dynamic> json) {
  return _Hunt.fromJson(json);
}

/// @nodoc
class _$HuntTearOff {
  const _$HuntTearOff();

// ignore: unused_element
  _Hunt call({String word, bool isFound = false}) {
    return _Hunt(
      word: word,
      isFound: isFound,
    );
  }

// ignore: unused_element
  Hunt fromJson(Map<String, Object> json) {
    return Hunt.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Hunt = _$HuntTearOff();

/// @nodoc
mixin _$Hunt {
  String get word;
  bool get isFound;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $HuntCopyWith<Hunt> get copyWith;
}

/// @nodoc
abstract class $HuntCopyWith<$Res> {
  factory $HuntCopyWith(Hunt value, $Res Function(Hunt) then) =
      _$HuntCopyWithImpl<$Res>;
  $Res call({String word, bool isFound});
}

/// @nodoc
class _$HuntCopyWithImpl<$Res> implements $HuntCopyWith<$Res> {
  _$HuntCopyWithImpl(this._value, this._then);

  final Hunt _value;
  // ignore: unused_field
  final $Res Function(Hunt) _then;

  @override
  $Res call({
    Object word = freezed,
    Object isFound = freezed,
  }) {
    return _then(_value.copyWith(
      word: word == freezed ? _value.word : word as String,
      isFound: isFound == freezed ? _value.isFound : isFound as bool,
    ));
  }
}

/// @nodoc
abstract class _$HuntCopyWith<$Res> implements $HuntCopyWith<$Res> {
  factory _$HuntCopyWith(_Hunt value, $Res Function(_Hunt) then) =
      __$HuntCopyWithImpl<$Res>;
  @override
  $Res call({String word, bool isFound});
}

/// @nodoc
class __$HuntCopyWithImpl<$Res> extends _$HuntCopyWithImpl<$Res>
    implements _$HuntCopyWith<$Res> {
  __$HuntCopyWithImpl(_Hunt _value, $Res Function(_Hunt) _then)
      : super(_value, (v) => _then(v as _Hunt));

  @override
  _Hunt get _value => super._value as _Hunt;

  @override
  $Res call({
    Object word = freezed,
    Object isFound = freezed,
  }) {
    return _then(_Hunt(
      word: word == freezed ? _value.word : word as String,
      isFound: isFound == freezed ? _value.isFound : isFound as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Hunt with DiagnosticableTreeMixin implements _Hunt {
  const _$_Hunt({this.word, this.isFound = false}) : assert(isFound != null);

  factory _$_Hunt.fromJson(Map<String, dynamic> json) =>
      _$_$_HuntFromJson(json);

  @override
  final String word;
  @JsonKey(defaultValue: false)
  @override
  final bool isFound;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Hunt(word: $word, isFound: $isFound)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Hunt'))
      ..add(DiagnosticsProperty('word', word))
      ..add(DiagnosticsProperty('isFound', isFound));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Hunt &&
            (identical(other.word, word) ||
                const DeepCollectionEquality().equals(other.word, word)) &&
            (identical(other.isFound, isFound) ||
                const DeepCollectionEquality().equals(other.isFound, isFound)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(word) ^
      const DeepCollectionEquality().hash(isFound);

  @JsonKey(ignore: true)
  @override
  _$HuntCopyWith<_Hunt> get copyWith =>
      __$HuntCopyWithImpl<_Hunt>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HuntToJson(this);
  }
}

abstract class _Hunt implements Hunt {
  const factory _Hunt({String word, bool isFound}) = _$_Hunt;

  factory _Hunt.fromJson(Map<String, dynamic> json) = _$_Hunt.fromJson;

  @override
  String get word;
  @override
  bool get isFound;
  @override
  @JsonKey(ignore: true)
  _$HuntCopyWith<_Hunt> get copyWith;
}
