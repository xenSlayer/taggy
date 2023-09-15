// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.81.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'bridge_generated.dart';
export 'bridge_generated.dart';
import 'dart:ffi' as ffi;

class TaggyPlatform extends FlutterRustBridgeBase<TaggyWire> {
  TaggyPlatform(ffi.DynamicLibrary dylib) : super(TaggyWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<ffi.Int32> api2wire_box_autoadd_mime_type(MimeType raw) {
    return inner.new_box_autoadd_mime_type_0(api2wire_mime_type(raw));
  }

  @protected
  ffi.Pointer<wire_Tag> api2wire_box_autoadd_tag(Tag raw) {
    final ptr = inner.new_box_autoadd_tag_0();
    _api_fill_to_wire_tag(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<ffi.Uint32> api2wire_box_autoadd_u32(int raw) {
    return inner.new_box_autoadd_u32_0(api2wire_u32(raw));
  }

  @protected
  ffi.Pointer<wire_list_picture> api2wire_list_picture(List<Picture> raw) {
    final ans = inner.new_list_picture_0(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_picture(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_list_tag> api2wire_list_tag(List<Tag> raw) {
    final ans = inner.new_list_tag_0(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_tag(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_opt_String(String? raw) {
    return raw == null ? ffi.nullptr : api2wire_String(raw);
  }

  @protected
  ffi.Pointer<ffi.Int32> api2wire_opt_box_autoadd_mime_type(MimeType? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_mime_type(raw);
  }

  @protected
  ffi.Pointer<ffi.Uint32> api2wire_opt_box_autoadd_u32(int? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_u32(raw);
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: finalizer

// Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_tag(
      Tag apiObj, ffi.Pointer<wire_Tag> wireObj) {
    _api_fill_to_wire_tag(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_picture(Picture apiObj, wire_Picture wireObj) {
    wireObj.pic_type = api2wire_picture_type(apiObj.picType);
    wireObj.pic_data = api2wire_uint_8_list(apiObj.picData);
    wireObj.mime_type = api2wire_opt_box_autoadd_mime_type(apiObj.mimeType);
    wireObj.width = api2wire_opt_box_autoadd_u32(apiObj.width);
    wireObj.height = api2wire_opt_box_autoadd_u32(apiObj.height);
    wireObj.color_depth = api2wire_opt_box_autoadd_u32(apiObj.colorDepth);
    wireObj.num_colors = api2wire_opt_box_autoadd_u32(apiObj.numColors);
  }

  void _api_fill_to_wire_tag(Tag apiObj, wire_Tag wireObj) {
    wireObj.tag_type = api2wire_tag_type(apiObj.tagType);
    wireObj.pictures = api2wire_list_picture(apiObj.pictures);
    wireObj.track_title = api2wire_opt_String(apiObj.trackTitle);
    wireObj.track_artist = api2wire_opt_String(apiObj.trackArtist);
    wireObj.album = api2wire_opt_String(apiObj.album);
    wireObj.album_artist = api2wire_opt_String(apiObj.albumArtist);
    wireObj.producer = api2wire_opt_String(apiObj.producer);
    wireObj.track_number = api2wire_opt_box_autoadd_u32(apiObj.trackNumber);
    wireObj.track_total = api2wire_opt_box_autoadd_u32(apiObj.trackTotal);
    wireObj.disc_number = api2wire_opt_box_autoadd_u32(apiObj.discNumber);
    wireObj.disc_total = api2wire_opt_box_autoadd_u32(apiObj.discTotal);
    wireObj.year = api2wire_opt_box_autoadd_u32(apiObj.year);
    wireObj.recording_date = api2wire_opt_String(apiObj.recordingDate);
    wireObj.original_release_date =
        api2wire_opt_String(apiObj.originalReleaseDate);
    wireObj.language = api2wire_opt_String(apiObj.language);
    wireObj.lyrics = api2wire_opt_String(apiObj.lyrics);
    wireObj.genre = api2wire_opt_String(apiObj.genre);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class TaggyWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  TaggyWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  TaggyWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_read_all(
    int port_,
    ffi.Pointer<wire_uint_8_list> path,
  ) {
    return _wire_read_all(
      port_,
      path,
    );
  }

  late final _wire_read_allPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_read_all');
  late final _wire_read_all = _wire_read_allPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_read_primary(
    int port_,
    ffi.Pointer<wire_uint_8_list> path,
  ) {
    return _wire_read_primary(
      port_,
      path,
    );
  }

  late final _wire_read_primaryPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_read_primary');
  late final _wire_read_primary = _wire_read_primaryPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_read_any(
    int port_,
    ffi.Pointer<wire_uint_8_list> path,
  ) {
    return _wire_read_any(
      port_,
      path,
    );
  }

  late final _wire_read_anyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_read_any');
  late final _wire_read_any = _wire_read_anyPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_write_all(
    int port_,
    ffi.Pointer<wire_uint_8_list> path,
    ffi.Pointer<wire_list_tag> tags,
    bool override_existent,
  ) {
    return _wire_write_all(
      port_,
      path,
      tags,
      override_existent,
    );
  }

  late final _wire_write_allPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_list_tag>, ffi.Bool)>>('wire_write_all');
  late final _wire_write_all = _wire_write_allPtr.asFunction<
      void Function(int, ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_list_tag>, bool)>();

  void wire_write_primary(
    int port_,
    ffi.Pointer<wire_uint_8_list> path,
    ffi.Pointer<wire_Tag> tag,
    bool keep_others,
  ) {
    return _wire_write_primary(
      port_,
      path,
      tag,
      keep_others,
    );
  }

  late final _wire_write_primaryPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_Tag>, ffi.Bool)>>('wire_write_primary');
  late final _wire_write_primary = _wire_write_primaryPtr.asFunction<
      void Function(
          int, ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_Tag>, bool)>();

  void wire_remove_all(
    int port_,
    ffi.Pointer<wire_uint_8_list> path,
  ) {
    return _wire_remove_all(
      port_,
      path,
    );
  }

  late final _wire_remove_allPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_remove_all');
  late final _wire_remove_all = _wire_remove_allPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_remove_tag(
    int port_,
    ffi.Pointer<wire_uint_8_list> path,
    int tag_type,
  ) {
    return _wire_remove_tag(
      port_,
      path,
      tag_type,
    );
  }

  late final _wire_remove_tagPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Int32)>>('wire_remove_tag');
  late final _wire_remove_tag = _wire_remove_tagPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>, int)>();

  ffi.Pointer<ffi.Int32> new_box_autoadd_mime_type_0(
    int value,
  ) {
    return _new_box_autoadd_mime_type_0(
      value,
    );
  }

  late final _new_box_autoadd_mime_type_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int32> Function(ffi.Int32)>>(
          'new_box_autoadd_mime_type_0');
  late final _new_box_autoadd_mime_type_0 = _new_box_autoadd_mime_type_0Ptr
      .asFunction<ffi.Pointer<ffi.Int32> Function(int)>();

  ffi.Pointer<wire_Tag> new_box_autoadd_tag_0() {
    return _new_box_autoadd_tag_0();
  }

  late final _new_box_autoadd_tag_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_Tag> Function()>>(
          'new_box_autoadd_tag_0');
  late final _new_box_autoadd_tag_0 =
      _new_box_autoadd_tag_0Ptr.asFunction<ffi.Pointer<wire_Tag> Function()>();

  ffi.Pointer<ffi.Uint32> new_box_autoadd_u32_0(
    int value,
  ) {
    return _new_box_autoadd_u32_0(
      value,
    );
  }

  late final _new_box_autoadd_u32_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Uint32> Function(ffi.Uint32)>>(
          'new_box_autoadd_u32_0');
  late final _new_box_autoadd_u32_0 = _new_box_autoadd_u32_0Ptr
      .asFunction<ffi.Pointer<ffi.Uint32> Function(int)>();

  ffi.Pointer<wire_list_picture> new_list_picture_0(
    int len,
  ) {
    return _new_list_picture_0(
      len,
    );
  }

  late final _new_list_picture_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_list_picture> Function(
              ffi.Int32)>>('new_list_picture_0');
  late final _new_list_picture_0 = _new_list_picture_0Ptr
      .asFunction<ffi.Pointer<wire_list_picture> Function(int)>();

  ffi.Pointer<wire_list_tag> new_list_tag_0(
    int len,
  ) {
    return _new_list_tag_0(
      len,
    );
  }

  late final _new_list_tag_0Ptr = _lookup<
          ffi.NativeFunction<ffi.Pointer<wire_list_tag> Function(ffi.Int32)>>(
      'new_list_tag_0');
  late final _new_list_tag_0 =
      _new_list_tag_0Ptr.asFunction<ffi.Pointer<wire_list_tag> Function(int)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>(
          'free_WireSyncReturn');
  late final _free_WireSyncReturn =
      _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

final class _Dart_Handle extends ffi.Opaque {}

final class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_Picture extends ffi.Struct {
  @ffi.Int32()
  external int pic_type;

  external ffi.Pointer<wire_uint_8_list> pic_data;

  external ffi.Pointer<ffi.Int32> mime_type;

  external ffi.Pointer<ffi.Uint32> width;

  external ffi.Pointer<ffi.Uint32> height;

  external ffi.Pointer<ffi.Uint32> color_depth;

  external ffi.Pointer<ffi.Uint32> num_colors;
}

final class wire_list_picture extends ffi.Struct {
  external ffi.Pointer<wire_Picture> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_Tag extends ffi.Struct {
  @ffi.Int32()
  external int tag_type;

  external ffi.Pointer<wire_list_picture> pictures;

  external ffi.Pointer<wire_uint_8_list> track_title;

  external ffi.Pointer<wire_uint_8_list> track_artist;

  external ffi.Pointer<wire_uint_8_list> album;

  external ffi.Pointer<wire_uint_8_list> album_artist;

  external ffi.Pointer<wire_uint_8_list> producer;

  external ffi.Pointer<ffi.Uint32> track_number;

  external ffi.Pointer<ffi.Uint32> track_total;

  external ffi.Pointer<ffi.Uint32> disc_number;

  external ffi.Pointer<ffi.Uint32> disc_total;

  external ffi.Pointer<ffi.Uint32> year;

  external ffi.Pointer<wire_uint_8_list> recording_date;

  external ffi.Pointer<wire_uint_8_list> original_release_date;

  external ffi.Pointer<wire_uint_8_list> language;

  external ffi.Pointer<wire_uint_8_list> lyrics;

  external ffi.Pointer<wire_uint_8_list> genre;
}

final class wire_list_tag extends ffi.Struct {
  external ffi.Pointer<wire_Tag> ptr;

  @ffi.Int32()
  external int len;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<
        ffi.Bool Function(DartPort port_id, ffi.Pointer<ffi.Void> message)>>;
typedef DartPort = ffi.Int64;
