//
//  Poly+Codable.swift
//  Poly
//
//  Created by Mathew Polzin on 1/12/19.
//

// MARK: - Generic Decoding

private func decode<Thing: Decodable>(_ type: Thing.Type, from container: SingleValueDecodingContainer) throws -> Result<Thing, DecodingError> {
	let ret: Result<Thing, DecodingError>
	do {
		ret = try .success(container.decode(Thing.self))
	} catch (let err as DecodingError) {
		ret = .failure(err)
	} catch (let err) {
		ret = .failure(DecodingError.typeMismatch(Thing.self,
												  .init(codingPath: container.codingPath,
														debugDescription: String(describing: err),
														underlyingError: err)))
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
			try decode(B.self, from: container).map { Poly2.b($0) } ]

		let maybeVal: Poly2<A, B>? = attempts
			.compactMap { $0.value }
			.first

		guard let val = maybeVal else {
			throw EncodingError.invalidValue(Poly2<A, B>.self, .init(codingPath: decoder.codingPath, debugDescription: "Failed to find an include of the expected type. Attempts: \(attempts.map { $0.error }.compactMap { $0 })"))
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
			.compactMap { $0.value }
			.first

		guard let val = maybeVal else {
			throw EncodingError.invalidValue(Poly3<A, B, C>.self, .init(codingPath: decoder.codingPath, debugDescription: "Failed to find an include of the expected type. Attempts: \(attempts.map { $0.error }.compactMap { $0 })"))
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
			.compactMap { $0.value }
			.first

		guard let val = maybeVal else {
			throw EncodingError.invalidValue(Poly4<A, B, C, D>.self, .init(codingPath: decoder.codingPath, debugDescription: "Failed to find an include of the expected type. Attempts: \(attempts.map { $0.error }.compactMap { $0 })"))
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
			.compactMap { $0.value }
			.first

		guard let val = maybeVal else {
			throw EncodingError.invalidValue(Poly5<A, B, C, D, E>.self, .init(codingPath: decoder.codingPath, debugDescription: "Failed to find an include of the expected type. Attempts: \(attempts.map { $0.error }.compactMap { $0 })"))
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
			.compactMap { $0.value }
			.first

		guard let val = maybeVal else {
			throw EncodingError.invalidValue(Poly6<A, B, C, D, E, F>.self, .init(codingPath: decoder.codingPath, debugDescription: "Failed to find an include of the expected type. Attempts: \(attempts.map { $0.error }.compactMap { $0 })"))
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
			.compactMap { $0.value }
			.first

		guard let val = maybeVal else {
			throw EncodingError.invalidValue(Poly7<A, B, C, D, E, F, G>.self, .init(codingPath: decoder.codingPath, debugDescription: "Failed to find an include of the expected type. Attempts: \(attempts.map { $0.error }.compactMap { $0 })"))
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
			.compactMap { $0.value }
			.first

		guard let val = maybeVal else {
			throw EncodingError.invalidValue(Poly8<A, B, C, D, E, F, G, H>.self, .init(codingPath: decoder.codingPath,
																					   debugDescription: "Failed to find an include of the expected type. Attempts: \(attempts.map { $0.error }.compactMap { $0 })"))
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
			.compactMap { $0.value }
			.first

		guard let val = maybeVal else {
			throw EncodingError.invalidValue(Poly9<A, B, C, D, E, F, G, H, I>.self, .init(codingPath: decoder.codingPath,
																						  debugDescription: "Failed to find an include of the expected type. Attempts: \(attempts.map { $0.error }.compactMap { $0 })"))
		}

		self = val
	}
}
