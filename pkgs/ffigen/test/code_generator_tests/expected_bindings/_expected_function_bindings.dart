// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

class Bindings {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  Bindings(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  Bindings.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  /// Just a test function
  /// heres another line
  int noParam() {
    return _noParam();
  }

  late final _noParamPtr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function()>>('noParam');
  late final _noParam = _noParamPtr.asFunction<int Function()>();

  int withPrimitiveParam(
    int a,
    int b,
  ) {
    return _withPrimitiveParam(
      a,
      b,
    );
  }

  late final _withPrimitiveParamPtr =
      _lookup<ffi.NativeFunction<ffi.Uint8 Function(ffi.Int32, ffi.Uint8)>>(
          'withPrimitiveParam');
  late final _withPrimitiveParam =
      _withPrimitiveParamPtr.asFunction<int Function(int, int)>();

  ffi.Pointer<ffi.Double> withPointerParam(
    ffi.Pointer<ffi.Int32> a,
    ffi.Pointer<ffi.Pointer<ffi.Uint8>> b,
  ) {
    return _withPointerParam(
      a,
      b,
    );
  }

  late final _withPointerParamPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Double> Function(ffi.Pointer<ffi.Int32>,
              ffi.Pointer<ffi.Pointer<ffi.Uint8>>)>>('withPointerParam');
  late final _withPointerParam = _withPointerParamPtr.asFunction<
      ffi.Pointer<ffi.Double> Function(
          ffi.Pointer<ffi.Int32>, ffi.Pointer<ffi.Pointer<ffi.Uint8>>)>();

  /// A function with isLeaf: true
  int leafFunc(
    int a,
  ) {
    return _leafFunc(
      a,
    );
  }

  late final _leafFuncPtr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32)>>('leafFunc');
  late final _leafFunc =
      _leafFuncPtr.asFunction<int Function(int)>(isLeaf: true);
}
