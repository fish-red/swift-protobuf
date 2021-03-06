// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: unittest_swift_fieldorder.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

// Protos/unittest_swift_fieldorder.proto - test proto
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
// -----------------------------------------------------------------------------
///
/// Check that fields get properly ordered when serializing
///
// -----------------------------------------------------------------------------

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Swift_Protobuf_TestFieldOrderings: SwiftProtobuf.Message, SwiftProtobuf.ExtensibleMessage {
  static let protoMessageName: String = _protobuf_package + ".TestFieldOrderings"

  var myString: String {
    get {return _storage._myString ?? String()}
    set {_uniqueStorage()._myString = newValue}
  }
  /// Returns true if `myString` has been explicitly set.
  var hasMyString: Bool {return _storage._myString != nil}
  /// Clears the value of `myString`. Subsequent reads from it will return its default value.
  mutating func clearMyString() {_storage._myString = nil}

  var myInt: Int64 {
    get {return _storage._myInt ?? 0}
    set {_uniqueStorage()._myInt = newValue}
  }
  /// Returns true if `myInt` has been explicitly set.
  var hasMyInt: Bool {return _storage._myInt != nil}
  /// Clears the value of `myInt`. Subsequent reads from it will return its default value.
  mutating func clearMyInt() {_storage._myInt = nil}

  var myFloat: Float {
    get {return _storage._myFloat ?? 0}
    set {_uniqueStorage()._myFloat = newValue}
  }
  /// Returns true if `myFloat` has been explicitly set.
  var hasMyFloat: Bool {return _storage._myFloat != nil}
  /// Clears the value of `myFloat`. Subsequent reads from it will return its default value.
  mutating func clearMyFloat() {_storage._myFloat = nil}

  var options: OneOf_Options? {
    get {return _storage._options}
    set {_uniqueStorage()._options = newValue}
  }

  var oneofInt64: Int64 {
    get {
      if case .oneofInt64(let v)? = _storage._options {return v}
      return 0
    }
    set {_uniqueStorage()._options = .oneofInt64(newValue)}
  }

  var oneofBool: Bool {
    get {
      if case .oneofBool(let v)? = _storage._options {return v}
      return false
    }
    set {_uniqueStorage()._options = .oneofBool(newValue)}
  }

  var oneofString: String {
    get {
      if case .oneofString(let v)? = _storage._options {return v}
      return String()
    }
    set {_uniqueStorage()._options = .oneofString(newValue)}
  }

  var oneofInt32: Int32 {
    get {
      if case .oneofInt32(let v)? = _storage._options {return v}
      return 0
    }
    set {_uniqueStorage()._options = .oneofInt32(newValue)}
  }

  var optionalNestedMessage: Swift_Protobuf_TestFieldOrderings.NestedMessage {
    get {return _storage._optionalNestedMessage ?? Swift_Protobuf_TestFieldOrderings.NestedMessage()}
    set {_uniqueStorage()._optionalNestedMessage = newValue}
  }
  /// Returns true if `optionalNestedMessage` has been explicitly set.
  var hasOptionalNestedMessage: Bool {return _storage._optionalNestedMessage != nil}
  /// Clears the value of `optionalNestedMessage`. Subsequent reads from it will return its default value.
  mutating func clearOptionalNestedMessage() {_storage._optionalNestedMessage = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Options: Equatable {
    case oneofInt64(Int64)
    case oneofBool(Bool)
    case oneofString(String)
    case oneofInt32(Int32)

    static func ==(lhs: Swift_Protobuf_TestFieldOrderings.OneOf_Options, rhs: Swift_Protobuf_TestFieldOrderings.OneOf_Options) -> Bool {
      switch (lhs, rhs) {
      case (.oneofInt64(let l), .oneofInt64(let r)): return l == r
      case (.oneofBool(let l), .oneofBool(let r)): return l == r
      case (.oneofString(let l), .oneofString(let r)): return l == r
      case (.oneofInt32(let l), .oneofInt32(let r)): return l == r
      default: return false
      }
    }
  }

  struct NestedMessage: SwiftProtobuf.Message {
    static let protoMessageName: String = Swift_Protobuf_TestFieldOrderings.protoMessageName + ".NestedMessage"

    var oo: Int64 {
      get {return _oo ?? 0}
      set {_oo = newValue}
    }
    /// Returns true if `oo` has been explicitly set.
    var hasOo: Bool {return self._oo != nil}
    /// Clears the value of `oo`. Subsequent reads from it will return its default value.
    mutating func clearOo() {self._oo = nil}

    var bb: Int32 {
      get {return _bb ?? 0}
      set {_bb = newValue}
    }
    /// Returns true if `bb` has been explicitly set.
    var hasBb: Bool {return self._bb != nil}
    /// Clears the value of `bb`. Subsequent reads from it will return its default value.
    mutating func clearBb() {self._bb = nil}

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularInt32Field(value: &self._bb)
        case 2: try decoder.decodeSingularInt64Field(value: &self._oo)
        default: break
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if let v = self._bb {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
      }
      if let v = self._oo {
        try visitor.visitSingularInt64Field(value: v, fieldNumber: 2)
      }
      try unknownFields.traverse(visitor: &visitor)
    }

    fileprivate var _oo: Int64? = nil
    fileprivate var _bb: Int32? = nil
  }

  init() {}

  public var isInitialized: Bool {
    if !_protobuf_extensionFieldValues.isInitialized {return false}
    return true
  }

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularInt64Field(value: &_storage._myInt)
        case 9:
          if _storage._options != nil {try decoder.handleConflictingOneOf()}
          var v: Bool?
          try decoder.decodeSingularBoolField(value: &v)
          if let v = v {_storage._options = .oneofBool(v)}
        case 10:
          if _storage._options != nil {try decoder.handleConflictingOneOf()}
          var v: Int32?
          try decoder.decodeSingularInt32Field(value: &v)
          if let v = v {_storage._options = .oneofInt32(v)}
        case 11: try decoder.decodeSingularStringField(value: &_storage._myString)
        case 60:
          if _storage._options != nil {try decoder.handleConflictingOneOf()}
          var v: Int64?
          try decoder.decodeSingularInt64Field(value: &v)
          if let v = v {_storage._options = .oneofInt64(v)}
        case 101: try decoder.decodeSingularFloatField(value: &_storage._myFloat)
        case 150:
          if _storage._options != nil {try decoder.handleConflictingOneOf()}
          var v: String?
          try decoder.decodeSingularStringField(value: &v)
          if let v = v {_storage._options = .oneofString(v)}
        case 200: try decoder.decodeSingularMessageField(value: &_storage._optionalNestedMessage)
        case 2..<9, 12..<56:
          try decoder.decodeExtensionField(values: &_protobuf_extensionFieldValues, messageType: Swift_Protobuf_TestFieldOrderings.self, fieldNumber: fieldNumber)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._myInt {
        try visitor.visitSingularInt64Field(value: v, fieldNumber: 1)
      }
      try visitor.visitExtensionFields(fields: _protobuf_extensionFieldValues, start: 2, end: 9)
      switch _storage._options {
      case .oneofBool(let v)?:
        try visitor.visitSingularBoolField(value: v, fieldNumber: 9)
      case .oneofInt32(let v)?:
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 10)
      case nil: break
      default: break
      }
      if let v = _storage._myString {
        try visitor.visitSingularStringField(value: v, fieldNumber: 11)
      }
      try visitor.visitExtensionFields(fields: _protobuf_extensionFieldValues, start: 12, end: 56)
      if case .oneofInt64(let v)? = _storage._options {
        try visitor.visitSingularInt64Field(value: v, fieldNumber: 60)
      }
      if let v = _storage._myFloat {
        try visitor.visitSingularFloatField(value: v, fieldNumber: 101)
      }
      if case .oneofString(let v)? = _storage._options {
        try visitor.visitSingularStringField(value: v, fieldNumber: 150)
      }
      if let v = _storage._optionalNestedMessage {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 200)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  var _protobuf_extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()
  fileprivate var _storage = _StorageClass.defaultInstance
}

/// These checks how the traverse() generated for a oneof
/// deals with field orders.  Currently requires inspecting the code.
struct Swift_Protobuf_OneofTraversalGeneration: SwiftProtobuf.Message, SwiftProtobuf.ExtensibleMessage {
  static let protoMessageName: String = _protobuf_package + ".OneofTraversalGeneration"

  /// Gaps, not no issues, no start:end: on traverse().
  var oGood: Swift_Protobuf_OneofTraversalGeneration.OneOf_OGood? = nil

  var a: Int32 {
    get {
      if case .a(let v)? = oGood {return v}
      return 0
    }
    set {oGood = .a(newValue)}
  }

  var b: Int32 {
    get {
      if case .b(let v)? = oGood {return v}
      return 0
    }
    set {oGood = .b(newValue)}
  }

  /// Gaps with a field in the middle of the range.
  var oConflictField: Swift_Protobuf_OneofTraversalGeneration.OneOf_OConflictField? = nil

  var a2: Int32 {
    get {
      if case .a2(let v)? = oConflictField {return v}
      return 0
    }
    set {oConflictField = .a2(newValue)}
  }

  var b2: Int32 {
    get {
      if case .b2(let v)? = oConflictField {return v}
      return 0
    }
    set {oConflictField = .b2(newValue)}
  }

  /// In the middle of previous oneof field ranges.
  var m: Int32 {
    get {return _m ?? 0}
    set {_m = newValue}
  }
  /// Returns true if `m` has been explicitly set.
  var hasM: Bool {return self._m != nil}
  /// Clears the value of `m`. Subsequent reads from it will return its default value.
  mutating func clearM() {self._m = nil}

  /// Gaps with an extension range in the middle of the range.
  var oConflictExtensionsStart: Swift_Protobuf_OneofTraversalGeneration.OneOf_OConflictExtensionsStart? = nil

  var a3: Int32 {
    get {
      if case .a3(let v)? = oConflictExtensionsStart {return v}
      return 0
    }
    set {oConflictExtensionsStart = .a3(newValue)}
  }

  var b3: Int32 {
    get {
      if case .b3(let v)? = oConflictExtensionsStart {return v}
      return 0
    }
    set {oConflictExtensionsStart = .b3(newValue)}
  }

  /// Gaps with an extension range in the middle of the range.
  var oConflictExtensionsEnd: Swift_Protobuf_OneofTraversalGeneration.OneOf_OConflictExtensionsEnd? = nil

  var a4: Int32 {
    get {
      if case .a4(let v)? = oConflictExtensionsEnd {return v}
      return 0
    }
    set {oConflictExtensionsEnd = .a4(newValue)}
  }

  var b4: Int32 {
    get {
      if case .b4(let v)? = oConflictExtensionsEnd {return v}
      return 0
    }
    set {oConflictExtensionsEnd = .b4(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Gaps, not no issues, no start:end: on traverse().
  enum OneOf_OGood: Equatable {
    case a(Int32)
    case b(Int32)

    static func ==(lhs: Swift_Protobuf_OneofTraversalGeneration.OneOf_OGood, rhs: Swift_Protobuf_OneofTraversalGeneration.OneOf_OGood) -> Bool {
      switch (lhs, rhs) {
      case (.a(let l), .a(let r)): return l == r
      case (.b(let l), .b(let r)): return l == r
      default: return false
      }
    }
  }

  /// Gaps with a field in the middle of the range.
  enum OneOf_OConflictField: Equatable {
    case a2(Int32)
    case b2(Int32)

    static func ==(lhs: Swift_Protobuf_OneofTraversalGeneration.OneOf_OConflictField, rhs: Swift_Protobuf_OneofTraversalGeneration.OneOf_OConflictField) -> Bool {
      switch (lhs, rhs) {
      case (.a2(let l), .a2(let r)): return l == r
      case (.b2(let l), .b2(let r)): return l == r
      default: return false
      }
    }
  }

  /// Gaps with an extension range in the middle of the range.
  enum OneOf_OConflictExtensionsStart: Equatable {
    case a3(Int32)
    case b3(Int32)

    static func ==(lhs: Swift_Protobuf_OneofTraversalGeneration.OneOf_OConflictExtensionsStart, rhs: Swift_Protobuf_OneofTraversalGeneration.OneOf_OConflictExtensionsStart) -> Bool {
      switch (lhs, rhs) {
      case (.a3(let l), .a3(let r)): return l == r
      case (.b3(let l), .b3(let r)): return l == r
      default: return false
      }
    }
  }

  /// Gaps with an extension range in the middle of the range.
  enum OneOf_OConflictExtensionsEnd: Equatable {
    case a4(Int32)
    case b4(Int32)

    static func ==(lhs: Swift_Protobuf_OneofTraversalGeneration.OneOf_OConflictExtensionsEnd, rhs: Swift_Protobuf_OneofTraversalGeneration.OneOf_OConflictExtensionsEnd) -> Bool {
      switch (lhs, rhs) {
      case (.a4(let l), .a4(let r)): return l == r
      case (.b4(let l), .b4(let r)): return l == r
      default: return false
      }
    }
  }

  init() {}

  public var isInitialized: Bool {
    if !_protobuf_extensionFieldValues.isInitialized {return false}
    return true
  }

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1:
        if self.oGood != nil {try decoder.handleConflictingOneOf()}
        var v: Int32?
        try decoder.decodeSingularInt32Field(value: &v)
        if let v = v {self.oGood = .a(v)}
      case 26:
        if self.oGood != nil {try decoder.handleConflictingOneOf()}
        var v: Int32?
        try decoder.decodeSingularInt32Field(value: &v)
        if let v = v {self.oGood = .b(v)}
      case 101:
        if self.oConflictField != nil {try decoder.handleConflictingOneOf()}
        var v: Int32?
        try decoder.decodeSingularInt32Field(value: &v)
        if let v = v {self.oConflictField = .a2(v)}
      case 113: try decoder.decodeSingularInt32Field(value: &self._m)
      case 126:
        if self.oConflictField != nil {try decoder.handleConflictingOneOf()}
        var v: Int32?
        try decoder.decodeSingularInt32Field(value: &v)
        if let v = v {self.oConflictField = .b2(v)}
      case 201:
        if self.oConflictExtensionsStart != nil {try decoder.handleConflictingOneOf()}
        var v: Int32?
        try decoder.decodeSingularInt32Field(value: &v)
        if let v = v {self.oConflictExtensionsStart = .a3(v)}
      case 226:
        if self.oConflictExtensionsStart != nil {try decoder.handleConflictingOneOf()}
        var v: Int32?
        try decoder.decodeSingularInt32Field(value: &v)
        if let v = v {self.oConflictExtensionsStart = .b3(v)}
      case 301:
        if self.oConflictExtensionsEnd != nil {try decoder.handleConflictingOneOf()}
        var v: Int32?
        try decoder.decodeSingularInt32Field(value: &v)
        if let v = v {self.oConflictExtensionsEnd = .a4(v)}
      case 326:
        if self.oConflictExtensionsEnd != nil {try decoder.handleConflictingOneOf()}
        var v: Int32?
        try decoder.decodeSingularInt32Field(value: &v)
        if let v = v {self.oConflictExtensionsEnd = .b4(v)}
      case 202..<203, 325..<326:
        try decoder.decodeExtensionField(values: &_protobuf_extensionFieldValues, messageType: Swift_Protobuf_OneofTraversalGeneration.self, fieldNumber: fieldNumber)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    switch self.oGood {
    case .a(let v)?:
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    case .b(let v)?:
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 26)
    case nil: break
    }
    if case .a2(let v)? = self.oConflictField {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 101)
    }
    if let v = self._m {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 113)
    }
    if case .b2(let v)? = self.oConflictField {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 126)
    }
    if case .a3(let v)? = self.oConflictExtensionsStart {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 201)
    }
    try visitor.visitExtensionFields(fields: _protobuf_extensionFieldValues, start: 202, end: 203)
    if case .b3(let v)? = self.oConflictExtensionsStart {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 226)
    }
    if case .a4(let v)? = self.oConflictExtensionsEnd {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 301)
    }
    try visitor.visitExtensionFields(fields: _protobuf_extensionFieldValues, start: 325, end: 326)
    if case .b4(let v)? = self.oConflictExtensionsEnd {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 326)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  var _protobuf_extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()
  fileprivate var _m: Int32? = nil
}

// MARK: - Extension support defined in unittest_swift_fieldorder.proto.

extension Swift_Protobuf_TestFieldOrderings {
  var Swift_Protobuf_myExtensionString: String {
    get {return getExtensionValue(ext: Swift_Protobuf_Extensions_my_extension_string) ?? String()}
    set {setExtensionValue(ext: Swift_Protobuf_Extensions_my_extension_string, value: newValue)}
  }
  /// Returns true if extension `Swift_Protobuf_Extensions_my_extension_string`
  /// has been explicitly set.
  var hasSwift_Protobuf_myExtensionString: Bool {
    return hasExtensionValue(ext: Swift_Protobuf_Extensions_my_extension_string)
  }
  /// Clears the value of extension `Swift_Protobuf_Extensions_my_extension_string`.
  /// Subsequent reads from it will return its default value.
  mutating func clearSwift_Protobuf_myExtensionString() {
    clearExtensionValue(ext: Swift_Protobuf_Extensions_my_extension_string)
  }
}

extension Swift_Protobuf_TestFieldOrderings {
  var Swift_Protobuf_myExtensionInt: Int32 {
    get {return getExtensionValue(ext: Swift_Protobuf_Extensions_my_extension_int) ?? 0}
    set {setExtensionValue(ext: Swift_Protobuf_Extensions_my_extension_int, value: newValue)}
  }
  /// Returns true if extension `Swift_Protobuf_Extensions_my_extension_int`
  /// has been explicitly set.
  var hasSwift_Protobuf_myExtensionInt: Bool {
    return hasExtensionValue(ext: Swift_Protobuf_Extensions_my_extension_int)
  }
  /// Clears the value of extension `Swift_Protobuf_Extensions_my_extension_int`.
  /// Subsequent reads from it will return its default value.
  mutating func clearSwift_Protobuf_myExtensionInt() {
    clearExtensionValue(ext: Swift_Protobuf_Extensions_my_extension_int)
  }
}

/// A `SwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `SwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `SwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `SwiftProtobuf.SimpleExtensionMap`.
let Swift_Protobuf_UnittestSwiftFieldorder_Extensions: SwiftProtobuf.SimpleExtensionMap = [
  Swift_Protobuf_Extensions_my_extension_string,
  Swift_Protobuf_Extensions_my_extension_int
]

let Swift_Protobuf_Extensions_my_extension_string = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufString>, Swift_Protobuf_TestFieldOrderings>(
  _protobuf_fieldNumber: 50,
  fieldName: "swift.protobuf.my_extension_string"
)

let Swift_Protobuf_Extensions_my_extension_int = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufInt32>, Swift_Protobuf_TestFieldOrderings>(
  _protobuf_fieldNumber: 5,
  fieldName: "swift.protobuf.my_extension_int"
)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "swift.protobuf"

extension Swift_Protobuf_TestFieldOrderings: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    11: .standard(proto: "my_string"),
    1: .standard(proto: "my_int"),
    101: .standard(proto: "my_float"),
    60: .standard(proto: "oneof_int64"),
    9: .standard(proto: "oneof_bool"),
    150: .standard(proto: "oneof_string"),
    10: .standard(proto: "oneof_int32"),
    200: .standard(proto: "optional_nested_message"),
  ]

  fileprivate class _StorageClass {
    var _myString: String? = nil
    var _myInt: Int64? = nil
    var _myFloat: Float? = nil
    var _options: Swift_Protobuf_TestFieldOrderings.OneOf_Options?
    var _optionalNestedMessage: Swift_Protobuf_TestFieldOrderings.NestedMessage? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _myString = source._myString
      _myInt = source._myInt
      _myFloat = source._myFloat
      _options = source._options
      _optionalNestedMessage = source._optionalNestedMessage
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  func _protobuf_generated_isEqualTo(other: Swift_Protobuf_TestFieldOrderings) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._myString != other_storage._myString {return false}
        if _storage._myInt != other_storage._myInt {return false}
        if _storage._myFloat != other_storage._myFloat {return false}
        if _storage._options != other_storage._options {return false}
        if _storage._optionalNestedMessage != other_storage._optionalNestedMessage {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    if _protobuf_extensionFieldValues != other._protobuf_extensionFieldValues {return false}
    return true
  }
}

extension Swift_Protobuf_TestFieldOrderings.NestedMessage: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "oo"),
    1: .same(proto: "bb"),
  ]

  func _protobuf_generated_isEqualTo(other: Swift_Protobuf_TestFieldOrderings.NestedMessage) -> Bool {
    if self._oo != other._oo {return false}
    if self._bb != other._bb {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Swift_Protobuf_OneofTraversalGeneration: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "a"),
    26: .same(proto: "b"),
    101: .same(proto: "a2"),
    126: .same(proto: "b2"),
    113: .same(proto: "m"),
    201: .same(proto: "a3"),
    226: .same(proto: "b3"),
    301: .same(proto: "a4"),
    326: .same(proto: "b4"),
  ]

  func _protobuf_generated_isEqualTo(other: Swift_Protobuf_OneofTraversalGeneration) -> Bool {
    if self.oGood != other.oGood {return false}
    if self.oConflictField != other.oConflictField {return false}
    if self._m != other._m {return false}
    if self.oConflictExtensionsStart != other.oConflictExtensionsStart {return false}
    if self.oConflictExtensionsEnd != other.oConflictExtensionsEnd {return false}
    if unknownFields != other.unknownFields {return false}
    if _protobuf_extensionFieldValues != other._protobuf_extensionFieldValues {return false}
    return true
  }
}
