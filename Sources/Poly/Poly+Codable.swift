//
//  Poly+Codable.swift
//  Poly
//
//  Created by Mathew Polzin on 1/12/19.
//

// MARK: - Generic Decoding

public struct PolyDecodeNoTypesMatchedError: Swift.Error, CustomDebugStringConvertible {

    public struct IndividualFailure: Swift.Error {
        let type: Any.Type
        let error: DecodingError
    }

    public let codingPath: [CodingKey]
    public let individualTypeFailures: [IndividualFailure]

    public var debugDescription: String {
        let codingPathString = codingPath
            .map { $0.intValue.map(String.init) ?? $0.stringValue }
            .joined(separator: "/")

        let failureStrings = individualTypeFailures.map {
            let type = $0.type
            let descriptiveError = $0.error as? CustomDebugStringConvertible
            let error = descriptiveError?.debugDescription ?? String(describing: $0.error)
            return "\(String(describing: type)) could not be decoded because:\n\(error)"
        }.joined(separator: "\n\n")

        return
"""
Poly failed to decode any of its types at: "\(codingPathString)"

\(failureStrings)
"""
    }
}

internal typealias PolyTypeNotFound = PolyDecodeNoTypesMatchedError.IndividualFailure

private func decode<Thing: Decodable>(_ type: Thing.Type, from container: SingleValueDecodingContainer) throws -> Result<Thing, PolyTypeNotFound> {
	let ret: Result<Thing, PolyTypeNotFound>
	do {
		ret = try .success(container.decode(Thing.self))
	} catch (let err as DecodingError) {
		ret = .failure(PolyTypeNotFound(type: type, error: err))
	} catch (let err) {
        ret = .failure(PolyTypeNotFound(
            type: type,
            error: DecodingError.typeMismatch(
                Thing.self,
                .init(
                    codingPath: container.codingPath,
                    debugDescription: String(describing: err),
                    underlyingError: err
                )
            )
        ))
	}
	return ret
}

// MARK: - 0 types
extension Poly1: Encodable where A: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .a(let a):
			try container.encode(a)
		}
	}
}

extension Poly1: Decodable where A: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		self = .a(try container.decode(A.self))
	}
}

// MARK: - 2 types
extension Poly2: Encodable where A: Encodable, B: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .a(let a):
			try container.encode(a)
		case .b(let b):
			try container.encode(b)
		}
	}
}

extension Poly2: Decodable where A: Decodable, B: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		let attempts = [
            try decode(A.self, from: container).map { Poly2.a($0) },
			try decode(B.self, from: container).map { Poly2.b($0) }]

		let maybeVal: Poly2<A, B>? = attempts
            .lazy
			.compactMap { $0.value }
			.first

		guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
		}

		self = val
	}
}

// MARK: - 3 types
extension Poly3: Encodable where A: Encodable, B: Encodable, C: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .a(let a):
			try container.encode(a)
		case .b(let b):
			try container.encode(b)
		case .c(let c):
			try container.encode(c)
		}
	}
}

extension Poly3: Decodable where A: Decodable, B: Decodable, C: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		let attempts = [
			try decode(A.self, from: container).map { Poly3.a($0) },
			try decode(B.self, from: container).map { Poly3.b($0) },
			try decode(C.self, from: container).map { Poly3.c($0) }]

		let maybeVal: Poly3<A, B, C>? = attempts
            .lazy
			.compactMap { $0.value }
			.first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

		self = val
	}
}

// MARK: - 4 types
extension Poly4: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .a(let a):
			try container.encode(a)
		case .b(let b):
			try container.encode(b)
		case .c(let c):
			try container.encode(c)
		case .d(let d):
			try container.encode(d)
		}
	}
}

extension Poly4: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		let attempts = [
			try decode(A.self, from: container).map { Poly4.a($0) },
			try decode(B.self, from: container).map { Poly4.b($0) },
			try decode(C.self, from: container).map { Poly4.c($0) },
			try decode(D.self, from: container).map { Poly4.d($0) }]

		let maybeVal: Poly4<A, B, C, D>? = attempts
            .lazy
			.compactMap { $0.value }
			.first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

		self = val
	}
}

// MARK: - 5 types
extension Poly5: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .a(let a):
			try container.encode(a)
		case .b(let b):
			try container.encode(b)
		case .c(let c):
			try container.encode(c)
		case .d(let d):
			try container.encode(d)
		case .e(let e):
			try container.encode(e)
		}
	}
}

extension Poly5: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		let attempts = [
			try decode(A.self, from: container).map { Poly5.a($0) },
			try decode(B.self, from: container).map { Poly5.b($0) },
			try decode(C.self, from: container).map { Poly5.c($0) },
			try decode(D.self, from: container).map { Poly5.d($0) },
			try decode(E.self, from: container).map { Poly5.e($0) }]

		let maybeVal: Poly5<A, B, C, D, E>? = attempts
            .lazy
			.compactMap { $0.value }
			.first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

		self = val
	}
}

// MARK: - 6 types
extension Poly6: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .a(let a):
			try container.encode(a)
		case .b(let b):
			try container.encode(b)
		case .c(let c):
			try container.encode(c)
		case .d(let d):
			try container.encode(d)
		case .e(let e):
			try container.encode(e)
		case .f(let f):
			try container.encode(f)
		}
	}
}

extension Poly6: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		let attempts = [
			try decode(A.self, from: container).map { Poly6.a($0) },
			try decode(B.self, from: container).map { Poly6.b($0) },
			try decode(C.self, from: container).map { Poly6.c($0) },
			try decode(D.self, from: container).map { Poly6.d($0) },
			try decode(E.self, from: container).map { Poly6.e($0) },
			try decode(F.self, from: container).map { Poly6.f($0) }]

		let maybeVal: Poly6<A, B, C, D, E, F>? = attempts
            .lazy
			.compactMap { $0.value }
			.first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

		self = val
	}
}

// MARK: - 7 types
extension Poly7: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .a(let a):
			try container.encode(a)
		case .b(let b):
			try container.encode(b)
		case .c(let c):
			try container.encode(c)
		case .d(let d):
			try container.encode(d)
		case .e(let e):
			try container.encode(e)
		case .f(let f):
			try container.encode(f)
		case .g(let g):
			try container.encode(g)
		}
	}
}

extension Poly7: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		let attempts = [
			try decode(A.self, from: container).map { Poly7.a($0) },
			try decode(B.self, from: container).map { Poly7.b($0) },
			try decode(C.self, from: container).map { Poly7.c($0) },
			try decode(D.self, from: container).map { Poly7.d($0) },
			try decode(E.self, from: container).map { Poly7.e($0) },
			try decode(F.self, from: container).map { Poly7.f($0) },
			try decode(G.self, from: container).map { Poly7.g($0) }]

		let maybeVal: Poly7<A, B, C, D, E, F, G>? = attempts
            .lazy
			.compactMap { $0.value }
			.first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

		self = val
	}
}

// MARK: - 8 types
extension Poly8: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .a(let a):
			try container.encode(a)
		case .b(let b):
			try container.encode(b)
		case .c(let c):
			try container.encode(c)
		case .d(let d):
			try container.encode(d)
		case .e(let e):
			try container.encode(e)
		case .f(let f):
			try container.encode(f)
		case .g(let g):
			try container.encode(g)
		case .h(let h):
			try container.encode(h)
		}
	}
}

extension Poly8: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		let attempts = [
			try decode(A.self, from: container).map { Poly8.a($0) },
			try decode(B.self, from: container).map { Poly8.b($0) },
			try decode(C.self, from: container).map { Poly8.c($0) },
			try decode(D.self, from: container).map { Poly8.d($0) },
			try decode(E.self, from: container).map { Poly8.e($0) },
			try decode(F.self, from: container).map { Poly8.f($0) },
			try decode(G.self, from: container).map { Poly8.g($0) },
			try decode(H.self, from: container).map { Poly8.h($0) }]

		let maybeVal: Poly8<A, B, C, D, E, F, G, H>? = attempts
            .lazy
			.compactMap { $0.value }
			.first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

		self = val
	}
}

// MARK: - 9 types
extension Poly9: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .a(let a):
			try container.encode(a)
		case .b(let b):
			try container.encode(b)
		case .c(let c):
			try container.encode(c)
		case .d(let d):
			try container.encode(d)
		case .e(let e):
			try container.encode(e)
		case .f(let f):
			try container.encode(f)
		case .g(let g):
			try container.encode(g)
		case .h(let h):
			try container.encode(h)
		case .i(let i):
			try container.encode(i)
		}
	}
}

extension Poly9: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		let attempts = [
			try decode(A.self, from: container).map { Poly9.a($0) },
			try decode(B.self, from: container).map { Poly9.b($0) },
			try decode(C.self, from: container).map { Poly9.c($0) },
			try decode(D.self, from: container).map { Poly9.d($0) },
			try decode(E.self, from: container).map { Poly9.e($0) },
			try decode(F.self, from: container).map { Poly9.f($0) },
			try decode(G.self, from: container).map { Poly9.g($0) },
			try decode(H.self, from: container).map { Poly9.h($0) },
			try decode(I.self, from: container).map { Poly9.i($0) }]

		let maybeVal: Poly9<A, B, C, D, E, F, G, H, I>? = attempts
            .lazy
			.compactMap { $0.value }
			.first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

		self = val
	}
}

// MARK: - 10 types
extension Poly10: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable, J: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .a(let a):
            try container.encode(a)
        case .b(let b):
            try container.encode(b)
        case .c(let c):
            try container.encode(c)
        case .d(let d):
            try container.encode(d)
        case .e(let e):
            try container.encode(e)
        case .f(let f):
            try container.encode(f)
        case .g(let g):
            try container.encode(g)
        case .h(let h):
            try container.encode(h)
        case .i(let i):
            try container.encode(i)
        case .j(let j):
            try container.encode(j)
        }
    }
}

extension Poly10: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable, J: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let attempts = [
            try decode(A.self, from: container).map { Poly10.a($0) },
            try decode(B.self, from: container).map { Poly10.b($0) },
            try decode(C.self, from: container).map { Poly10.c($0) },
            try decode(D.self, from: container).map { Poly10.d($0) },
            try decode(E.self, from: container).map { Poly10.e($0) },
            try decode(F.self, from: container).map { Poly10.f($0) },
            try decode(G.self, from: container).map { Poly10.g($0) },
            try decode(H.self, from: container).map { Poly10.h($0) },
            try decode(I.self, from: container).map { Poly10.i($0) },
            try decode(J.self, from: container).map { Poly10.j($0) }]

        let maybeVal: Poly10<A, B, C, D, E, F, G, H, I, J>? = attempts
            .lazy
            .compactMap { $0.value }
            .first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

        self = val
    }
}

// MARK: - 11 types
extension Poly11: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable, J: Encodable, K: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .a(let a):
            try container.encode(a)
        case .b(let b):
            try container.encode(b)
        case .c(let c):
            try container.encode(c)
        case .d(let d):
            try container.encode(d)
        case .e(let e):
            try container.encode(e)
        case .f(let f):
            try container.encode(f)
        case .g(let g):
            try container.encode(g)
        case .h(let h):
            try container.encode(h)
        case .i(let i):
            try container.encode(i)
        case .j(let j):
            try container.encode(j)
        case .k(let k):
            try container.encode(k)
        }
    }
}

extension Poly11: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable, J: Decodable, K: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let attempts = [
            try decode(A.self, from: container).map { Poly11.a($0) },
            try decode(B.self, from: container).map { Poly11.b($0) },
            try decode(C.self, from: container).map { Poly11.c($0) },
            try decode(D.self, from: container).map { Poly11.d($0) },
            try decode(E.self, from: container).map { Poly11.e($0) },
            try decode(F.self, from: container).map { Poly11.f($0) },
            try decode(G.self, from: container).map { Poly11.g($0) },
            try decode(H.self, from: container).map { Poly11.h($0) },
            try decode(I.self, from: container).map { Poly11.i($0) },
            try decode(J.self, from: container).map { Poly11.j($0) },
            try decode(K.self, from: container).map { Poly11.k($0) }]

        let maybeVal: Poly11<A, B, C, D, E, F, G, H, I, J, K>? = attempts
            .lazy
            .compactMap { $0.value }
            .first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

        self = val
    }
}
