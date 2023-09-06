// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalculatorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) onButtonClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? onButtonClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? onButtonClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnButtonClick value) onButtonClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnButtonClick value)? onButtonClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnButtonClick value)? onButtonClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorEventCopyWith<$Res> {
  factory $CalculatorEventCopyWith(
          CalculatorEvent value, $Res Function(CalculatorEvent) then) =
      _$CalculatorEventCopyWithImpl<$Res, CalculatorEvent>;
}

/// @nodoc
class _$CalculatorEventCopyWithImpl<$Res, $Val extends CalculatorEvent>
    implements $CalculatorEventCopyWith<$Res> {
  _$CalculatorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$CalculatorEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CalculatorEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) onButtonClick,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? onButtonClick,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? onButtonClick,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnButtonClick value) onButtonClick,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnButtonClick value)? onButtonClick,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnButtonClick value)? onButtonClick,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CalculatorEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_OnButtonClickCopyWith<$Res> {
  factory _$$_OnButtonClickCopyWith(
          _$_OnButtonClick value, $Res Function(_$_OnButtonClick) then) =
      __$$_OnButtonClickCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_OnButtonClickCopyWithImpl<$Res>
    extends _$CalculatorEventCopyWithImpl<$Res, _$_OnButtonClick>
    implements _$$_OnButtonClickCopyWith<$Res> {
  __$$_OnButtonClickCopyWithImpl(
      _$_OnButtonClick _value, $Res Function(_$_OnButtonClick) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_OnButtonClick(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnButtonClick implements _OnButtonClick {
  const _$_OnButtonClick(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'CalculatorEvent.onButtonClick(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnButtonClick &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnButtonClickCopyWith<_$_OnButtonClick> get copyWith =>
      __$$_OnButtonClickCopyWithImpl<_$_OnButtonClick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) onButtonClick,
  }) {
    return onButtonClick(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? onButtonClick,
  }) {
    return onButtonClick?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? onButtonClick,
    required TResult orElse(),
  }) {
    if (onButtonClick != null) {
      return onButtonClick(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnButtonClick value) onButtonClick,
  }) {
    return onButtonClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnButtonClick value)? onButtonClick,
  }) {
    return onButtonClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnButtonClick value)? onButtonClick,
    required TResult orElse(),
  }) {
    if (onButtonClick != null) {
      return onButtonClick(this);
    }
    return orElse();
  }
}

abstract class _OnButtonClick implements CalculatorEvent {
  const factory _OnButtonClick(final String value) = _$_OnButtonClick;

  String get value;
  @JsonKey(ignore: true)
  _$$_OnButtonClickCopyWith<_$_OnButtonClick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalculatorState {
  String get input => throw _privateConstructorUsedError;
  String get output => throw _privateConstructorUsedError;
  bool get hideinput => throw _privateConstructorUsedError;
  double get outputsize => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalculatorStateCopyWith<CalculatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorStateCopyWith<$Res> {
  factory $CalculatorStateCopyWith(
          CalculatorState value, $Res Function(CalculatorState) then) =
      _$CalculatorStateCopyWithImpl<$Res, CalculatorState>;
  @useResult
  $Res call({String input, String output, bool hideinput, double outputsize});
}

/// @nodoc
class _$CalculatorStateCopyWithImpl<$Res, $Val extends CalculatorState>
    implements $CalculatorStateCopyWith<$Res> {
  _$CalculatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? output = null,
    Object? hideinput = null,
    Object? outputsize = null,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
      hideinput: null == hideinput
          ? _value.hideinput
          : hideinput // ignore: cast_nullable_to_non_nullable
              as bool,
      outputsize: null == outputsize
          ? _value.outputsize
          : outputsize // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $CalculatorStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String input, String output, bool hideinput, double outputsize});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CalculatorStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? output = null,
    Object? hideinput = null,
    Object? outputsize = null,
  }) {
    return _then(_$_Initial(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
      hideinput: null == hideinput
          ? _value.hideinput
          : hideinput // ignore: cast_nullable_to_non_nullable
              as bool,
      outputsize: null == outputsize
          ? _value.outputsize
          : outputsize // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.input,
      required this.output,
      required this.hideinput,
      required this.outputsize});

  @override
  final String input;
  @override
  final String output;
  @override
  final bool hideinput;
  @override
  final double outputsize;

  @override
  String toString() {
    return 'CalculatorState(input: $input, output: $output, hideinput: $hideinput, outputsize: $outputsize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.output, output) || other.output == output) &&
            (identical(other.hideinput, hideinput) ||
                other.hideinput == hideinput) &&
            (identical(other.outputsize, outputsize) ||
                other.outputsize == outputsize));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, input, output, hideinput, outputsize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements CalculatorState {
  const factory _Initial(
      {required final String input,
      required final String output,
      required final bool hideinput,
      required final double outputsize}) = _$_Initial;

  @override
  String get input;
  @override
  String get output;
  @override
  bool get hideinput;
  @override
  double get outputsize;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
