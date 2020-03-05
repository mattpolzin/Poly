//
//  Poly.swift
//  Poly
//
//  Created by Mathew Polzin on 11/22/18.
//

/// Poly is a protocol to which types that
/// are polymorphic belong to.
///
/// Specifically, `Poly1`, `Poly2`, `Poly3`, etc.
/// types conform to the `Poly` protocol.
/// These types allow typesafe grouping
/// of a number of disparate types under
/// one roof.
///
/// # Access
/// You can access the value of a `Poly` type
/// in one of four different ways.
/// 1. You can switch over its cases
///
///         switch poly2Value {
///         case .a(let value):
///             // value is of type `A`
///         case .b(let value):
///             // value is of type `B`
///         }
///
/// 2. You can ask for a value by accessor
///
///         let value1 = poly2Value.a // value1 is of type `A?`
///         let value2 = poly2Value.b // value2 is of type `B?`
///
/// 3. You can ask for a value by type
///
///         let value1 = poly2Value[A.self] // value1 is of type `A?`
///         let value2 = poly2Value[B.self] // value2 is of type `B?`
///
/// 4. You can ask for a type-erased value
///
///         let value = poly2Value.value // value is of type `Any`
///
public protocol Poly {
    /// Get a type-erased value.
    var value: Any { get }

    /// Get a list of all types this `Poly` supports.
    static var allTypes: [Any.Type] { get }
}

// MARK: - 0 types
public protocol _Poly0: Poly { }
public struct Poly0: _Poly0 {

	public init() {}

    public var value: Any { return () }
}

extension Poly0: Equatable {}

// MARK: - 1 type
public protocol _Poly1: _Poly0 {
	associatedtype A

    /// Get the value if it is of type `A`
	var a: A? { get }

	init(_ a: A)
}

public extension _Poly1 {
	subscript(_ lookup: A.Type) -> A? {
		return a
	}
}

/// See `Poly` for documentation
public enum Poly1<A>: _Poly1 {
	case a(A)

	public var a: A? {
        switch self {
        case .a(let ret):
            return ret
        }
	}

	public init(_ a: A) {
		self = .a(a)
	}

    public var value: Any {
        switch self {
        case .a(let ret): return ret
        }
    }
}

extension Poly1: Equatable where A: Equatable {}

// MARK: - 2 types
public protocol _Poly2: _Poly1 {
	associatedtype B

    /// Get the value if it is of type `B`
	var b: B? { get }

	init(_ b: B)
}

public extension _Poly2 {
	subscript(_ lookup: B.Type) -> B? {
		return b
	}
}

/// See `Poly` for documentation
public typealias Either = Poly2

/// See `Poly` for documentation
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

    public var value: Any {
        switch self {
        case .a(let ret): return ret
        case .b(let ret): return ret
        }
    }
}

extension Poly2: Equatable where A: Equatable, B: Equatable {}

// MARK: - 3 types
public protocol _Poly3: _Poly2 {
	associatedtype C

    /// Get the value if it is of type `C`
	var c: C? { get }

	init(_ c: C)
}

public extension _Poly3 {
	subscript(_ lookup: C.Type) -> C? {
		return c
	}
}

/// See `Poly` for documentation
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

    public var value: Any {
        switch self {
        case .a(let ret): return ret
        case .b(let ret): return ret
        case .c(let ret): return ret
        }
    }
}

extension Poly3: Equatable where A: Equatable, B: Equatable, C:Equatable {}

// MARK: - 4 types
public protocol _Poly4: _Poly3 {
	associatedtype D

    /// Get the value if it is of type `D`
	var d: D? { get }

	init(_ d: D)
}

public extension _Poly4 {
	subscript(_ lookup: D.Type) -> D? {
		return d
	}
}

/// See `Poly` for documentation
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

    public var value: Any {
        switch self {
        case .a(let ret): return ret
        case .b(let ret): return ret
        case .c(let ret): return ret
        case .d(let ret): return ret
        }
    }
}

extension Poly4: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable {}

// MARK: - 5 types
public protocol _Poly5: _Poly4 {
	associatedtype E

    /// Get the value if it is of type `E`
	var e: E? { get }

	init(_ e: E)
}

public extension _Poly5 {
	subscript(_ lookup: E.Type) -> E? {
		return e
	}
}

/// See `Poly` for documentation
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

    public var value: Any {
        switch self {
        case .a(let ret): return ret
        case .b(let ret): return ret
        case .c(let ret): return ret
        case .d(let ret): return ret
        case .e(let ret): return ret
        }
    }
}

extension Poly5: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable {}

// MARK: - 6 types
public protocol _Poly6: _Poly5 {
	associatedtype F

    /// Get the value if it is of type `F`
	var f: F? { get }

	init(_ f: F)
}

public extension _Poly6 {
	subscript(_ lookup: F.Type) -> F? {
		return f
	}
}

/// See `Poly` for documentation
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

    public var value: Any {
        switch self {
        case .a(let ret): return ret
        case .b(let ret): return ret
        case .c(let ret): return ret
        case .d(let ret): return ret
        case .e(let ret): return ret
        case .f(let ret): return ret
        }
    }
}

extension Poly6: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable {}

// MARK: - 7 types
public protocol _Poly7: _Poly6 {
	associatedtype G

    /// Get the value if it is of type `G`
	var g: G? { get }

	init(_ g: G)
}

public extension _Poly7 {
	subscript(_ lookup: G.Type) -> G? {
		return g
	}
}

/// See `Poly` for documentation
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

    public var value: Any {
        switch self {
        case .a(let ret): return ret
        case .b(let ret): return ret
        case .c(let ret): return ret
        case .d(let ret): return ret
        case .e(let ret): return ret
        case .f(let ret): return ret
        case .g(let ret): return ret
        }
    }
}

extension Poly7: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable, G: Equatable {}

// MARK: - 8 types
public protocol _Poly8: _Poly7 {
	associatedtype H

    /// Get the value if it is of type `H`
	var h: H? { get }

	init(_ h: H)
}

public extension _Poly8 {
	subscript(_ lookup: H.Type) -> H? {
		return h
	}
}

/// See `Poly` for documentation
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

    public var value: Any {
        switch self {
        case .a(let ret): return ret
        case .b(let ret): return ret
        case .c(let ret): return ret
        case .d(let ret): return ret
        case .e(let ret): return ret
        case .f(let ret): return ret
        case .g(let ret): return ret
        case .h(let ret): return ret
        }
    }
}

extension Poly8: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable, G: Equatable, H: Equatable {}

// MARK: - 9 types
public protocol _Poly9: _Poly8 {
	associatedtype I

    /// Get the value if it is of type `I`
	var i: I? { get }

	init(_ i: I)
}

public extension _Poly9 {
	subscript(_ lookup: I.Type) -> I? {
		return i
	}
}

/// See `Poly` for documentation
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

    public var value: Any {
        switch self {
        case .a(let ret): return ret
        case .b(let ret): return ret
        case .c(let ret): return ret
        case .d(let ret): return ret
        case .e(let ret): return ret
        case .f(let ret): return ret
        case .g(let ret): return ret
        case .h(let ret): return ret
        case .i(let ret): return ret
        }
    }
}

extension Poly9: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable, G: Equatable, H: Equatable, I: Equatable {}

// MARK: - 10 types
public protocol _Poly10: _Poly9 {
    associatedtype J

    /// Get the value if it is of type `J`
    var j: J? { get }

    init(_ j: J)
}

public extension _Poly10 {
    subscript(_ lookup: J.Type) -> J? {
        return j
    }
}

/// See `Poly` for documentation
public enum Poly10<A, B, C, D, E, F, G, H, I, J>: _Poly10 {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
    case g(G)
    case h(H)
    case i(I)
    case j(J)

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

    public var j: J? {
        guard case let .j(ret) = self else { return nil }
        return ret
    }

    public init(_ j: J) {
        self = .j(j)
    }

    public var value: Any {
        switch self {
        case .a(let ret): return ret
        case .b(let ret): return ret
        case .c(let ret): return ret
        case .d(let ret): return ret
        case .e(let ret): return ret
        case .f(let ret): return ret
        case .g(let ret): return ret
        case .h(let ret): return ret
        case .i(let ret): return ret
        case .j(let ret): return ret
        }
    }
}

extension Poly10: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable, G: Equatable, H: Equatable, I: Equatable, J: Equatable {}

// MARK: - 11 types
public protocol _Poly11: _Poly10 {
    associatedtype K

    /// Get the value if it is of type `K`
    var k: K? { get }

    init(_ k: K)
}

public extension _Poly11 {
    subscript(_ lookup: K.Type) -> K? {
        return k
    }
}

/// See `Poly` for documentation
public enum Poly11<A, B, C, D, E, F, G, H, I, J, K>: _Poly11 {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
    case g(G)
    case h(H)
    case i(I)
    case j(J)
    case k(K)

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

    public var j: J? {
        guard case let .j(ret) = self else { return nil }
        return ret
    }

    public init(_ j: J) {
        self = .j(j)
    }

    public var k: K? {
        guard case let .k(ret) = self else { return nil }
        return ret
    }

    public init(_ k: K) {
        self = .k(k)
    }

    public var value: Any {
        switch self {
        case .a(let ret): return ret
        case .b(let ret): return ret
        case .c(let ret): return ret
        case .d(let ret): return ret
        case .e(let ret): return ret
        case .f(let ret): return ret
        case .g(let ret): return ret
        case .h(let ret): return ret
        case .i(let ret): return ret
        case .j(let ret): return ret
        case .k(let ret): return ret
        }
    }
}

extension Poly11: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable, G: Equatable, H: Equatable, I: Equatable, J: Equatable, K: Equatable {}
