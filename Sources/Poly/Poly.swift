//
//  Poly.swift
//  Poly
//
//  Created by Mathew Polzin on 11/22/18.
//

/// Poly is a protocol to which types that
/// are polymorphic belong to. Specifically,
/// Poly1, Poly2, Poly3, etc. types conform
/// to the Poly protocol. These types allow
/// typesafe grouping of a number of
/// disparate types under one roof.
public protocol Poly {}

// MARK: - 0 types
public protocol _Poly0: Poly { }
public struct Poly0: _Poly0 {

	public init() {}
}

extension Poly0: Equatable {}

// MARK: - 1 type
public protocol _Poly1: _Poly0 {
	associatedtype A
	var a: A? { get }

	init(_ a: A)
}

public extension _Poly1 {
	subscript(_ lookup: A.Type) -> A? {
		return a
	}
}

public enum Poly1<A>: _Poly1 {
	case a(A)

	public var a: A? {
		guard case let .a(ret) = self else { return nil }
		return ret
	}

	public init(_ a: A) {
		self = .a(a)
	}
}

extension Poly1: Equatable where A: Equatable {}

// MARK: - 2 types
public protocol _Poly2: _Poly1 {
	associatedtype B
	var b: B? { get }

	init(_ b: B)
}

public extension _Poly2 {
	subscript(_ lookup: B.Type) -> B? {
		return b
	}
}

public typealias Either = Poly2

public enum Poly2<A, B>: _Poly2 {
	case a(A)
	case b(B)

	public var a: A? {
		guard case let .a(ret) = self else { return nil }
		return ret
	}

	public init(_ a: A) {
		self = .a(a)
	}

	public var b: B? {
		guard case let .b(ret) = self else { return nil }
		return ret
	}

	public init(_ b: B) {
		self = .b(b)
	}
}

extension Poly2: Equatable where A: Equatable, B: Equatable {}

// MARK: - 3 types
public protocol _Poly3: _Poly2 {
	associatedtype C
	var c: C? { get }

	init(_ c: C)
}

public extension _Poly3 {
	subscript(_ lookup: C.Type) -> C? {
		return c
	}
}

public enum Poly3<A, B, C>: _Poly3 {
	case a(A)
	case b(B)
	case c(C)

	public var a: A? {
		guard case let .a(ret) = self else { return nil }
		return ret
	}

	public init(_ a: A) {
		self = .a(a)
	}

	public var b: B? {
		guard case let .b(ret) = self else { return nil }
		return ret
	}

	public init(_ b: B) {
		self = .b(b)
	}

	public var c: C? {
		guard case let .c(ret) = self else { return nil }
		return ret
	}

	public init(_ c: C) {
		self = .c(c)
	}
}

extension Poly3: Equatable where A: Equatable, B: Equatable, C:Equatable {}

// MARK: - 4 types
public protocol _Poly4: _Poly3 {
	associatedtype D
	var d: D? { get }

	init(_ d: D)
}

public extension _Poly4 {
	subscript(_ lookup: D.Type) -> D? {
		return d
	}
}

public enum Poly4<A, B, C, D>: _Poly4 {
	case a(A)
	case b(B)
	case c(C)
	case d(D)

	public var a: A? {
		guard case let .a(ret) = self else { return nil }
		return ret
	}

	public init(_ a: A) {
		self = .a(a)
	}

	public var b: B? {
		guard case let .b(ret) = self else { return nil }
		return ret
	}

	public init(_ b: B) {
		self = .b(b)
	}

	public var c: C? {
		guard case let .c(ret) = self else { return nil }
		return ret
	}

	public init(_ c: C) {
		self = .c(c)
	}

	public var d: D? {
		guard case let .d(ret) = self else { return nil }
		return ret
	}

	public init(_ d: D) {
		self = .d(d)
	}
}

extension Poly4: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable {}

// MARK: - 5 types
public protocol _Poly5: _Poly4 {
	associatedtype E
	var e: E? { get }

	init(_ e: E)
}

public extension _Poly5 {
	subscript(_ lookup: E.Type) -> E? {
		return e
	}
}

public enum Poly5<A, B, C, D, E>: _Poly5 {
	case a(A)
	case b(B)
	case c(C)
	case d(D)
	case e(E)

	public var a: A? {
		guard case let .a(ret) = self else { return nil }
		return ret
	}

	public init(_ a: A) {
		self = .a(a)
	}

	public var b: B? {
		guard case let .b(ret) = self else { return nil }
		return ret
	}

	public init(_ b: B) {
		self = .b(b)
	}

	public var c: C? {
		guard case let .c(ret) = self else { return nil }
		return ret
	}

	public init(_ c: C) {
		self = .c(c)
	}

	public var d: D? {
		guard case let .d(ret) = self else { return nil }
		return ret
	}

	public init(_ d: D) {
		self = .d(d)
	}

	public var e: E? {
		guard case let .e(ret) = self else { return nil }
		return ret
	}

	public init(_ e: E) {
		self = .e(e)
	}
}

extension Poly5: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable {}

// MARK: - 6 types
public protocol _Poly6: _Poly5 {
	associatedtype F
	var f: F? { get }

	init(_ f: F)
}

public extension _Poly6 {
	subscript(_ lookup: F.Type) -> F? {
		return f
	}
}

public enum Poly6<A, B, C, D, E, F>: _Poly6 {
	case a(A)
	case b(B)
	case c(C)
	case d(D)
	case e(E)
	case f(F)

	public var a: A? {
		guard case let .a(ret) = self else { return nil }
		return ret
	}

	public init(_ a: A) {
		self = .a(a)
	}

	public var b: B? {
		guard case let .b(ret) = self else { return nil }
		return ret
	}

	public init(_ b: B) {
		self = .b(b)
	}

	public var c: C? {
		guard case let .c(ret) = self else { return nil }
		return ret
	}

	public init(_ c: C) {
		self = .c(c)
	}

	public var d: D? {
		guard case let .d(ret) = self else { return nil }
		return ret
	}

	public init(_ d: D) {
		self = .d(d)
	}

	public var e: E? {
		guard case let .e(ret) = self else { return nil }
		return ret
	}

	public init(_ e: E) {
		self = .e(e)
	}

	public var f: F? {
		guard case let .f(ret) = self else { return nil }
		return ret
	}

	public init(_ f: F) {
		self = .f(f)
	}
}

extension Poly6: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable {}

// MARK: - 7 types
public protocol _Poly7: _Poly6 {
	associatedtype G
	var g: G? { get }

	init(_ g: G)
}

public extension _Poly7 {
	subscript(_ lookup: G.Type) -> G? {
		return g
	}
}

public enum Poly7<A, B, C, D, E, F, G>: _Poly7 {
	case a(A)
	case b(B)
	case c(C)
	case d(D)
	case e(E)
	case f(F)
	case g(G)

	public var a: A? {
		guard case let .a(ret) = self else { return nil }
		return ret
	}

	public init(_ a: A) {
		self = .a(a)
	}

	public var b: B? {
		guard case let .b(ret) = self else { return nil }
		return ret
	}

	public init(_ b: B) {
		self = .b(b)
	}

	public var c: C? {
		guard case let .c(ret) = self else { return nil }
		return ret
	}

	public init(_ c: C) {
		self = .c(c)
	}

	public var d: D? {
		guard case let .d(ret) = self else { return nil }
		return ret
	}

	public init(_ d: D) {
		self = .d(d)
	}

	public var e: E? {
		guard case let .e(ret) = self else { return nil }
		return ret
	}

	public init(_ e: E) {
		self = .e(e)
	}

	public var f: F? {
		guard case let .f(ret) = self else { return nil }
		return ret
	}

	public init(_ f: F) {
		self = .f(f)
	}

	public var g: G? {
		guard case let .g(ret) = self else { return nil }
		return ret
	}

	public init(_ g: G) {
		self = .g(g)
	}
}

extension Poly7: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable, G: Equatable {}

// MARK: - 8 types
public protocol _Poly8: _Poly7 {
	associatedtype H
	var h: H? { get }

	init(_ h: H)
}

public extension _Poly8 {
	subscript(_ lookup: H.Type) -> H? {
		return h
	}
}

public enum Poly8<A, B, C, D, E, F, G, H>: _Poly8 {
	case a(A)
	case b(B)
	case c(C)
	case d(D)
	case e(E)
	case f(F)
	case g(G)
	case h(H)

	public var a: A? {
		guard case let .a(ret) = self else { return nil }
		return ret
	}

	public init(_ a: A) {
		self = .a(a)
	}

	public var b: B? {
		guard case let .b(ret) = self else { return nil }
		return ret
	}

	public init(_ b: B) {
		self = .b(b)
	}

	public var c: C? {
		guard case let .c(ret) = self else { return nil }
		return ret
	}

	public init(_ c: C) {
		self = .c(c)
	}

	public var d: D? {
		guard case let .d(ret) = self else { return nil }
		return ret
	}

	public init(_ d: D) {
		self = .d(d)
	}

	public var e: E? {
		guard case let .e(ret) = self else { return nil }
		return ret
	}

	public init(_ e: E) {
		self = .e(e)
	}

	public var f: F? {
		guard case let .f(ret) = self else { return nil }
		return ret
	}

	public init(_ f: F) {
		self = .f(f)
	}

	public var g: G? {
		guard case let .g(ret) = self else { return nil }
		return ret
	}

	public init(_ g: G) {
		self = .g(g)
	}

	public var h: H? {
		guard case let .h(ret) = self else { return nil }
		return ret
	}

	public init(_ h: H) {
		self = .h(h)
	}
}

extension Poly8: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable, G: Equatable, H: Equatable {}

// MARK: - 9 types
public protocol _Poly9: _Poly8 {
	associatedtype I
	var i: I? { get }

	init(_ i: I)
}

public extension _Poly9 {
	subscript(_ lookup: I.Type) -> I? {
		return i
	}
}

public enum Poly9<A, B, C, D, E, F, G, H, I>: _Poly9 {
	case a(A)
	case b(B)
	case c(C)
	case d(D)
	case e(E)
	case f(F)
	case g(G)
	case h(H)
	case i(I)

	public var a: A? {
		guard case let .a(ret) = self else { return nil }
		return ret
	}

	public init(_ a: A) {
		self = .a(a)
	}

	public var b: B? {
		guard case let .b(ret) = self else { return nil }
		return ret
	}

	public init(_ b: B) {
		self = .b(b)
	}

	public var c: C? {
		guard case let .c(ret) = self else { return nil }
		return ret
	}

	public init(_ c: C) {
		self = .c(c)
	}

	public var d: D? {
		guard case let .d(ret) = self else { return nil }
		return ret
	}

	public init(_ d: D) {
		self = .d(d)
	}

	public var e: E? {
		guard case let .e(ret) = self else { return nil }
		return ret
	}

	public init(_ e: E) {
		self = .e(e)
	}

	public var f: F? {
		guard case let .f(ret) = self else { return nil }
		return ret
	}

	public init(_ f: F) {
		self = .f(f)
	}

	public var g: G? {
		guard case let .g(ret) = self else { return nil }
		return ret
	}

	public init(_ g: G) {
		self = .g(g)
	}

	public var h: H? {
		guard case let .h(ret) = self else { return nil }
		return ret
	}

	public init(_ h: H) {
		self = .h(h)
	}

	public var i: I? {
		guard case let .i(ret) = self else { return nil }
		return ret
	}

	public init(_ i: I) {
		self = .i(i)
	}
}

extension Poly9: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable, G: Equatable, H: Equatable, I: Equatable {}
