// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.81.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'bridge_generated.io.dart'
    if (dart.library.html) 'bridge_generated.web.dart';

abstract class Taggy {
  /// Read all audio tags from the file at given `path`.
  Future<TaggyFile> readAll({required String path, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kReadAllConstMeta;

  /// Read only the primary audio tag from the file at given `path`.
  ///
  /// **Note**: If the primary tag does not exist,
  /// this will return a [TaggyFile] with no tags.
  ///
  /// Throws an **exception** when:
  /// - path doesn't exists
  Future<TaggyFile> readPrimary({required String path, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kReadPrimaryConstMeta;

  /// Read any audio tag from the file at the given `path`.
  ///
  /// **Note**: If the file has no tags,
  /// this will return a [TaggyFile] with an empty tags.
  ///
  /// Throws an **exception** when:
  /// - path doesn't exists
  Future<TaggyFile> readAny({required String path, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kReadAnyConstMeta;

  /// Write all provided `tags` to the file at given `path`.
  ///
  /// when `override_existent` is set to `true`, this will remove all existing tags.
  /// Otherwise, it will add or update any existing ones.
  ///
  /// Throws an **exception** when:
  /// - path doesn't exists
  Future<TaggyFile> writeAll(
      {required String path,
      required List<Tag> tags,
      required bool overrideExistent,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kWriteAllConstMeta;

  /// Write the provided `tag` as the primary tag for the file at given `path`.
  ///
  /// If `keep_others` is set to `false`, this will remove any existing tags from the file.
  ///
  /// **Note**: the `tag_type` of the give tag will be overridden with the file primary tag type,
  /// so you can set it to any or use [TagType.FilePrimaryType].
  ///
  /// Throws an **exception** when:
  /// - path doesn't exists
  Future<TaggyFile> writePrimary(
      {required String path,
      required Tag tag,
      required bool keepOthers,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kWritePrimaryConstMeta;

  /// Delete all tags from file at given `path`.
  ///
  /// Throws an **exception** when:
  /// - path doesn't exists
  Future<void> removeAll({required String path, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRemoveAllConstMeta;

  /// Deletes the `tag` with `TagType` equals to `tag_type` from file at the given `path`.
  ///
  /// If the file doesn't have any tag with the given `tag_type`,
  /// **no** errors will be returned.
  ///
  /// Throws an **exception** when:
  /// - path doesn't exists
  Future<void> removeTag(
      {required String path, required TagType tagType, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRemoveTagConstMeta;
}

/// The information of an audio track
class AudioInfo {
  /// The duration in seconds.
  final int? durationSec;
  final int? overallBitrate;
  final int? audioBitrate;
  final int? sampleRate;
  final int? bitDepth;
  final int? channels;
  final int? channelMask;

  const AudioInfo({
    this.durationSec,
    this.overallBitrate,
    this.audioBitrate,
    this.sampleRate,
    this.bitDepth,
    this.channels,
    this.channelMask,
  });
}

/// The type of a file
enum FileType {
  Aac,
  Aiff,
  Ape,
  Flac,
  Mpeg,
  Mp4,
  Mpc,
  Opus,
  Vorbis,
  Speex,
  Wav,
  WavPack,
  Other,
}

enum MimeType {
  /// PNG image
  Png,

  /// JPEG image
  Jpeg,

  /// TIFF image
  Tiff,

  /// BMP image
  Bmp,

  /// GIF image
  Gif,

  /// Unknown mimetype
  Unknown,

  /// No mimetype
  None,
}

/// Gives information about a tag's picture.
class Picture {
  final PictureType picType;

  /// The picture's data
  final Uint8List picData;

  /// The picture's mimetype
  final MimeType? mimeType;

  /// The picture's width in pixels
  final int? width;

  /// The picture's height in pixels
  final int? height;

  /// The picture's color depth in bits per pixel
  final int? colorDepth;

  /// The number of colors used
  final int? numColors;

  const Picture({
    required this.picType,
    required this.picData,
    this.mimeType,
    this.width,
    this.height,
    this.colorDepth,
    this.numColors,
  });
}

enum PictureType {
  Other,
  Icon,
  OtherIcon,
  CoverFront,
  CoverBack,
  Leaflet,
  Media,
  LeadArtist,
  Artist,
  Conductor,
  Band,
  Composer,
  Lyricist,
  RecordingLocation,
  DuringRecording,
  DuringPerformance,
  ScreenCapture,
  BrightFish,
  Illustration,
  BandLogo,
  PublisherLogo,
  Undefined,
}

class Tag {
  final TagType tagType;
  final List<Picture> pictures;
  final String? trackTitle;
  final String? trackArtist;
  final String? album;
  final String? albumArtist;
  final String? producer;
  final int? trackNumber;

  /// Total track count of this track's disc
  final int? trackTotal;
  final int? discNumber;
  final int? discTotal;
  final int? year;
  final String? recordingDate;
  final String? originalReleaseDate;
  final String? language;
  final String? lyrics;
  final String? genre;

  const Tag({
    required this.tagType,
    required this.pictures,
    this.trackTitle,
    this.trackArtist,
    this.album,
    this.albumArtist,
    this.producer,
    this.trackNumber,
    this.trackTotal,
    this.discNumber,
    this.discTotal,
    this.year,
    this.recordingDate,
    this.originalReleaseDate,
    this.language,
    this.lyrics,
    this.genre,
  });
}

enum TagType {
  /// This covers both APEv1 and APEv2 as it doesn't matter much
  Ape,

  /// Represents an ID3v1 tag
  Id3v1,

  /// This covers all ID3v2 versions since they all get upgraded to ID3v2.4
  Id3v2,

  /// Represents an MP4 ilst atom
  Mp4Ilst,

  /// Represents vorbis comments
  VorbisComments,

  /// Represents a RIFF INFO LIST
  RiffInfo,

  /// Represents AIFF text chunks
  AiffText,

  /// This will be converted to the audio file primary tag type.
  ///
  /// **Note**: this is intended for the tag passed to `write_primary()` if you don't
  /// know the file primary tag type.
  FilePrimaryType,

  /// Other type
  Other,
}

/// A generic representation of an audio file
///
/// Holds information about a file and its audio tags.
class TaggyFile {
  /// The Type of this file
  final FileType? fileType;

  /// The Size of this file
  final int? size;

  /// The properties of this file audio track.
  final AudioInfo audio;

  /// The tags included with this file.
  final List<Tag> tags;
  final TagType primaryTagType;

  const TaggyFile({
    this.fileType,
    this.size,
    required this.audio,
    required this.tags,
    required this.primaryTagType,
  });
}

class TaggyImpl implements Taggy {
  final TaggyPlatform _platform;
  factory TaggyImpl(ExternalLibrary dylib) =>
      TaggyImpl.raw(TaggyPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory TaggyImpl.wasm(FutureOr<WasmModule> module) =>
      TaggyImpl(module as ExternalLibrary);
  TaggyImpl.raw(this._platform);
  Future<TaggyFile> readAll({required String path, dynamic hint}) {
    var arg0 = _platform.api2wire_String(path);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_read_all(port_, arg0),
      parseSuccessData: _wire2api_taggy_file,
      constMeta: kReadAllConstMeta,
      argValues: [path],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kReadAllConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "read_all",
        argNames: ["path"],
      );

  Future<TaggyFile> readPrimary({required String path, dynamic hint}) {
    var arg0 = _platform.api2wire_String(path);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_read_primary(port_, arg0),
      parseSuccessData: _wire2api_taggy_file,
      constMeta: kReadPrimaryConstMeta,
      argValues: [path],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kReadPrimaryConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "read_primary",
        argNames: ["path"],
      );

  Future<TaggyFile> readAny({required String path, dynamic hint}) {
    var arg0 = _platform.api2wire_String(path);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_read_any(port_, arg0),
      parseSuccessData: _wire2api_taggy_file,
      constMeta: kReadAnyConstMeta,
      argValues: [path],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kReadAnyConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "read_any",
        argNames: ["path"],
      );

  Future<TaggyFile> writeAll(
      {required String path,
      required List<Tag> tags,
      required bool overrideExistent,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(path);
    var arg1 = _platform.api2wire_list_tag(tags);
    var arg2 = overrideExistent;
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_write_all(port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_taggy_file,
      constMeta: kWriteAllConstMeta,
      argValues: [path, tags, overrideExistent],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kWriteAllConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "write_all",
        argNames: ["path", "tags", "overrideExistent"],
      );

  Future<TaggyFile> writePrimary(
      {required String path,
      required Tag tag,
      required bool keepOthers,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(path);
    var arg1 = _platform.api2wire_box_autoadd_tag(tag);
    var arg2 = keepOthers;
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_write_primary(port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_taggy_file,
      constMeta: kWritePrimaryConstMeta,
      argValues: [path, tag, keepOthers],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kWritePrimaryConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "write_primary",
        argNames: ["path", "tag", "keepOthers"],
      );

  Future<void> removeAll({required String path, dynamic hint}) {
    var arg0 = _platform.api2wire_String(path);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_remove_all(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kRemoveAllConstMeta,
      argValues: [path],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kRemoveAllConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "remove_all",
        argNames: ["path"],
      );

  Future<void> removeTag(
      {required String path, required TagType tagType, dynamic hint}) {
    var arg0 = _platform.api2wire_String(path);
    var arg1 = api2wire_tag_type(tagType);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_remove_tag(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      constMeta: kRemoveTagConstMeta,
      argValues: [path, tagType],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kRemoveTagConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "remove_tag",
        argNames: ["path", "tagType"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  AudioInfo _wire2api_audio_info(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 7)
      throw Exception('unexpected arr length: expect 7 but see ${arr.length}');
    return AudioInfo(
      durationSec: _wire2api_opt_box_autoadd_u64(arr[0]),
      overallBitrate: _wire2api_opt_box_autoadd_u32(arr[1]),
      audioBitrate: _wire2api_opt_box_autoadd_u32(arr[2]),
      sampleRate: _wire2api_opt_box_autoadd_u32(arr[3]),
      bitDepth: _wire2api_opt_box_autoadd_u8(arr[4]),
      channels: _wire2api_opt_box_autoadd_u8(arr[5]),
      channelMask: _wire2api_opt_box_autoadd_u32(arr[6]),
    );
  }

  FileType _wire2api_box_autoadd_file_type(dynamic raw) {
    return _wire2api_file_type(raw);
  }

  MimeType _wire2api_box_autoadd_mime_type(dynamic raw) {
    return _wire2api_mime_type(raw);
  }

  int _wire2api_box_autoadd_u32(dynamic raw) {
    return raw as int;
  }

  int _wire2api_box_autoadd_u64(dynamic raw) {
    return _wire2api_u64(raw);
  }

  int _wire2api_box_autoadd_u8(dynamic raw) {
    return raw as int;
  }

  FileType _wire2api_file_type(dynamic raw) {
    return FileType.values[raw as int];
  }

  int _wire2api_i32(dynamic raw) {
    return raw as int;
  }

  List<Picture> _wire2api_list_picture(dynamic raw) {
    return (raw as List<dynamic>).map(_wire2api_picture).toList();
  }

  List<Tag> _wire2api_list_tag(dynamic raw) {
    return (raw as List<dynamic>).map(_wire2api_tag).toList();
  }

  MimeType _wire2api_mime_type(dynamic raw) {
    return MimeType.values[raw as int];
  }

  String? _wire2api_opt_String(dynamic raw) {
    return raw == null ? null : _wire2api_String(raw);
  }

  FileType? _wire2api_opt_box_autoadd_file_type(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_file_type(raw);
  }

  MimeType? _wire2api_opt_box_autoadd_mime_type(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_mime_type(raw);
  }

  int? _wire2api_opt_box_autoadd_u32(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_u32(raw);
  }

  int? _wire2api_opt_box_autoadd_u64(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_u64(raw);
  }

  int? _wire2api_opt_box_autoadd_u8(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_u8(raw);
  }

  Picture _wire2api_picture(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 7)
      throw Exception('unexpected arr length: expect 7 but see ${arr.length}');
    return Picture(
      picType: _wire2api_picture_type(arr[0]),
      picData: _wire2api_uint_8_list(arr[1]),
      mimeType: _wire2api_opt_box_autoadd_mime_type(arr[2]),
      width: _wire2api_opt_box_autoadd_u32(arr[3]),
      height: _wire2api_opt_box_autoadd_u32(arr[4]),
      colorDepth: _wire2api_opt_box_autoadd_u32(arr[5]),
      numColors: _wire2api_opt_box_autoadd_u32(arr[6]),
    );
  }

  PictureType _wire2api_picture_type(dynamic raw) {
    return PictureType.values[raw as int];
  }

  Tag _wire2api_tag(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 17)
      throw Exception('unexpected arr length: expect 17 but see ${arr.length}');
    return Tag(
      tagType: _wire2api_tag_type(arr[0]),
      pictures: _wire2api_list_picture(arr[1]),
      trackTitle: _wire2api_opt_String(arr[2]),
      trackArtist: _wire2api_opt_String(arr[3]),
      album: _wire2api_opt_String(arr[4]),
      albumArtist: _wire2api_opt_String(arr[5]),
      producer: _wire2api_opt_String(arr[6]),
      trackNumber: _wire2api_opt_box_autoadd_u32(arr[7]),
      trackTotal: _wire2api_opt_box_autoadd_u32(arr[8]),
      discNumber: _wire2api_opt_box_autoadd_u32(arr[9]),
      discTotal: _wire2api_opt_box_autoadd_u32(arr[10]),
      year: _wire2api_opt_box_autoadd_u32(arr[11]),
      recordingDate: _wire2api_opt_String(arr[12]),
      originalReleaseDate: _wire2api_opt_String(arr[13]),
      language: _wire2api_opt_String(arr[14]),
      lyrics: _wire2api_opt_String(arr[15]),
      genre: _wire2api_opt_String(arr[16]),
    );
  }

  TagType _wire2api_tag_type(dynamic raw) {
    return TagType.values[raw as int];
  }

  TaggyFile _wire2api_taggy_file(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 5)
      throw Exception('unexpected arr length: expect 5 but see ${arr.length}');
    return TaggyFile(
      fileType: _wire2api_opt_box_autoadd_file_type(arr[0]),
      size: _wire2api_opt_box_autoadd_u64(arr[1]),
      audio: _wire2api_audio_info(arr[2]),
      tags: _wire2api_list_tag(arr[3]),
      primaryTagType: _wire2api_tag_type(arr[4]),
    );
  }

  int _wire2api_u32(dynamic raw) {
    return raw as int;
  }

  int _wire2api_u64(dynamic raw) {
    return castInt(raw);
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }
}

// Section: api2wire

@protected
bool api2wire_bool(bool raw) {
  return raw;
}

@protected
int api2wire_i32(int raw) {
  return raw;
}

@protected
int api2wire_mime_type(MimeType raw) {
  return api2wire_i32(raw.index);
}

@protected
int api2wire_picture_type(PictureType raw) {
  return api2wire_i32(raw.index);
}

@protected
int api2wire_tag_type(TagType raw) {
  return api2wire_i32(raw.index);
}

@protected
int api2wire_u32(int raw) {
  return raw;
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer
